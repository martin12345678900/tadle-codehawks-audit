// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {PerMarketsStorage} from "../storage/PerMarketsStorage.sol";
import {OfferStatus, AbortOfferStatus, OfferType, OfferSettleType} from "../storage/OfferStatus.sol";
import {StockStatus, StockType} from "../storage/OfferStatus.sol";
import {ITadleFactory} from "../factory/ITadleFactory.sol";
import {ITokenManager, TokenBalanceType} from "../interfaces/ITokenManager.sol";
import {ISystemConfig, MarketPlaceInfo, MarketPlaceStatus, ReferralInfo} from "../interfaces/ISystemConfig.sol";
import {IPerMarkets, OfferInfo, StockInfo, MakerInfo, CreateOfferParams} from "../interfaces/IPerMarkets.sol";
import {IWrappedNativeToken} from "../interfaces/IWrappedNativeToken.sol";
import {RelatedContractLibraries} from "../libraries/RelatedContractLibraries.sol";
import {MarketPlaceLibraries} from "../libraries/MarketPlaceLibraries.sol";
import {OfferLibraries} from "../libraries/OfferLibraries.sol";
import {GenerateAddress} from "../libraries/GenerateAddress.sol";
import {Constants} from "../libraries/Constants.sol";
import {Rescuable} from "../utils/Rescuable.sol";
import {Related} from "../utils/Related.sol";
import {Errors} from "../utils/Errors.sol";

/**
 * @title PreMarkets
 * @notice Implement the pre market
 */
contract PreMarktes is PerMarketsStorage, Rescuable, Related, IPerMarkets {
    using Math for uint256;
    using RelatedContractLibraries for ITadleFactory;
    using MarketPlaceLibraries for MarketPlaceInfo;

    constructor() Rescuable() {}

    /**
     * @notice Create offer to a specific marketplace (e market maker)
     * @dev params must be valid, details in CreateOfferParams
     * @dev points and amount must be greater than 0
     */
    function createOffer(CreateOfferParams calldata params) external payable {
        /**
         * @dev points and amount must be greater than 0
         * @dev eachTradeTax must be less than 100%, decimal scaler is 10000
         * @dev collateralRate must be more than 100%, decimal scaler is 10000
         */

        // e check if points and amount are greater than 0
        if (params.points == 0x0 || params.amount == 0x0) {
            revert Errors.AmountIsZero();
        }

        // e check if eachTradeTax is less than 100%
        if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
            revert InvalidEachTradeTaxRate();
        }

        // e check if collateralRate is more than 100%
        if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
            revert InvalidCollateralRate();
        }

        /// @dev market place must be online
        // i could be done as a modifier because it's used in multiple functions
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();
        MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(params.marketPlace);
        // e check if the market place is online
        marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);

        /// @dev generate address for maker, offer, stock.
        address makerAddr = GenerateAddress.generateMakerAddress(offerId); // offerId = 0
        address offerAddr = GenerateAddress.generateOfferAddress(offerId); // offerId = 0
        address stockAddr = GenerateAddress.generateStockAddress(offerId); // offerId = 0

        // e check if the maker already exists
        if (makerInfoMap[makerAddr].authority != address(0x0)) {
            revert MakerAlreadyExist();
        }

        // e check if the offer already exists
        if (offerInfoMap[offerAddr].authority != address(0x0)) {
            revert OfferAlreadyExist();
        }

        // e check if the stock already exists
        if (stockInfoMap[stockAddr].authority != address(0x0)) {
            revert StockAlreadyExist();
        }

        // e increase the offer id
        // more gas efficient would be `offerId++`
        offerId = offerId + 1;

        {
            /// @dev transfer collateral from _msgSender() to capital pool

            // e calculate the amount that should be transferred to the capital pool
            uint256 transferAmount = OfferLibraries.getDepositAmount(
                params.offerType, params.collateralRate, params.amount, true, Math.Rounding.Ceil
            );

            // e get the tokenManager contract
            ITokenManager tokenManager = tadleFactory.getTokenManager();
            // e deposit msg.value or some allowed ERC20 token to the capital pool
            tokenManager.tillIn{value: msg.value}(_msgSender(), params.tokenAddress, transferAmount, false);
        }

        /// @dev update maker info

        // e update the makerInfo
        // e makerInfoMap[offerId] => maker
        makerInfoMap[makerAddr] = MakerInfo({
            offerSettleType: params.offerSettleType,
            authority: _msgSender(), // e this shows who is the maker
            marketPlace: params.marketPlace,
            tokenAddress: params.tokenAddress,
            originOffer: offerAddr,
            platformFee: 0,
            eachTradeTax: params.eachTradeTax
        });

        /// @dev update offer info

        // e update the offerInfo
        offerInfoMap[offerAddr] = OfferInfo({
            id: offerId,
            authority: _msgSender(), // e this shows who created the offer
            maker: makerAddr,
            offerStatus: OfferStatus.Virgin,
            offerType: params.offerType,
            points: params.points,
            amount: params.amount,
            collateralRate: params.collateralRate,
            abortOfferStatus: AbortOfferStatus.Initialized,
            usedPoints: 0,
            tradeTax: 0,
            settledPoints: 0,
            settledPointTokenAmount: 0,
            settledCollateralAmount: 0
        });

        /// @dev update stock info

        // e update the stockInfo
        // stock0
        stockInfoMap[stockAddr] = StockInfo({
            id: offerId,
            stockStatus: StockStatus.Initialized,
            stockType: params.offerType == OfferType.Ask ? StockType.Bid : StockType.Ask,
            authority: _msgSender(), // e this shows who created the stock
            maker: makerAddr,
            preOffer: address(0x0),
            offer: offerAddr,
            points: params.points,
            amount: params.amount
        });

        // e emit an event for the creation of the offer
        emit CreateOffer(
            offerAddr, makerAddr, stockAddr, params.marketPlace, _msgSender(), params.points, params.amount
        );
    }

    /**
     * @notice Create taker (taker is the one who takes the offer created by the maker)
     * @param _offer offer address
     * @param _points points
     */

    // _offer = offerAddr0, points = 500
    function createTaker(address _offer, uint256 _points) external payable {
        /**
         * @dev offer must be virgin
         * @dev points must be greater than 0
         * @dev total points must be greater than used points + _points
         */
        if (_points == 0x0) {
            // e check if `points` is greater than 0
            revert Errors.AmountIsZero();
        }

        OfferInfo storage offerInfo = offerInfoMap[_offer]; // e get offer information
        MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker]; // e get maker of this offer information

        // e check if offer status !== 'Virgin' - revert if true
        if (offerInfo.offerStatus != OfferStatus.Virgin) {
            revert InvalidOfferStatus();
        }

        // e check if the points are greater than the available points
        if (offerInfo.points < _points + offerInfo.usedPoints) {
            revert NotEnoughPoints(offerInfo.points, offerInfo.usedPoints, _points);
        }

        /// @dev market place must be online
        
        // @audit-low - we can check the marketplace status at the beginning of the function to save gas
        // also we can create a modifier for this check because it's used in multiple functions
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();
        {
            MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);
            marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);
        }

        // e get the reffer info
        ReferralInfo memory referralInfo = systemConfig.getReferralInfo(_msgSender());

        // e get the platform fee rate for the caller user
        uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender());

        /// @dev generate stock address
        address stockAddr = GenerateAddress.generateStockAddress(offerId); // stockAddr = stockAddr1
        if (stockInfoMap[stockAddr].authority != address(0x0)) {
            revert StockAlreadyExist();
        }

        /// @dev Transfer token from user to capital pool as collateral

        // e the amount taker needs to deposit to capital pool
        uint256 depositAmount = _points.mulDiv(offerInfo.amount, offerInfo.points, Math.Rounding.Ceil);
        // e the platform fee taker needs to pay to the capital pool
        uint256 platformFee = depositAmount.mulDiv(platformFeeRate, Constants.PLATFORM_FEE_DECIMAL_SCALER);
        // e the trade tax taker needs to pay to the capital pool based on the maker's trade tax rate
        uint256 tradeTax = depositAmount.mulDiv(makerInfo.eachTradeTax, Constants.EACH_TRADE_TAX_DECIMAL_SCALER);

        ITokenManager tokenManager = tadleFactory.getTokenManager();
        // e deposit the calculated amount + platformFee + tradeTax to the capital pool
        _depositTokenWhenCreateTaker(platformFee, depositAmount, tradeTax, makerInfo, offerInfo, tokenManager);

        // e update usedPoints
        offerInfo.usedPoints = offerInfo.usedPoints + _points;

        /// @dev update stock info
        // e creates new stock => stockAdr = stockAddr1
        stockInfoMap[stockAddr] = StockInfo({
            id: offerId, // 1
            stockStatus: StockStatus.Initialized,
            stockType: offerInfo.offerType == OfferType.Ask ? StockType.Bid : StockType.Ask,
            authority: _msgSender(), // e the taker
            maker: offerInfo.maker,
            preOffer: _offer, // new
            points: _points, // new
            amount: depositAmount, // new
            offer: address(0x0) // zero address
        });

        // q why we increase the offerId here ?
        offerId = offerId + 1; // offerId = 1 => offerId = 2
        // e add to mapping the needed token amounts to the refferer and authority so they can withdraw it later
        uint256 remainingPlatformFee =
            _updateReferralBonus(platformFee, depositAmount, stockAddr, makerInfo, referralInfo, tokenManager);

        makerInfo.platformFee = makerInfo.platformFee + remainingPlatformFee;

        // e add the tax to maker's balance so he can withdraw it later
        // e if it's a sell offer, add the depositedAmount to the maker's balance
        // e if it's a buy offer, add the depositedAmount to the taker's balance
        _updateTokenBalanceWhenCreateTaker(_offer, tradeTax, depositAmount, offerInfo, makerInfo, tokenManager);

        /// @dev emit CreateTaker
        emit CreateTaker(_offer, msg.sender, stockAddr, _points, depositAmount, tradeTax, remainingPlatformFee);
    }

    /**
     * @notice list offer
     * @param _stock stock address
     * @param _amount the amount of offer
     * @param _collateralRate offer collateral rate
     * @dev Only stock owner can list offer
     * @dev Market place must be online
     * @dev Only ask offer can be listed
     */
    // _stock = stockAddr1
    function listOffer(address _stock, uint256 _amount, uint256 _collateralRate) external payable {
        // e check if the amount is greater not 0
        if (_amount == 0x0) {
            revert Errors.AmountIsZero();
        }

        // e check if the collateral rate is greater than 100%
        if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
            revert InvalidCollateralRate();
        }

        StockInfo storage stockInfo = stockInfoMap[_stock];
        // e check if the caller is the owner of the stock
        if (_msgSender() != stockInfo.authority) {
            revert Errors.Unauthorized();
        }

        OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
        MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];

        /// @dev market place must be online
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();
        MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);

        marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);

        // e check if the stock is already taken
        if (stockInfo.offer != address(0x0)) {
            revert OfferAlreadyExist();
        }

        // e check if the stockType is Ask(Sell)
        if (stockInfo.stockType != StockType.Bid) {
            revert InvalidStockType(StockType.Bid, stockInfo.stockType);
        }

        /// @dev change abort offer status when offer settle type is turbo
        if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
            address originOffer = makerInfo.originOffer; // e get the origin offer address == stockInfo.preOffer
            OfferInfo memory originOfferInfo = offerInfoMap[originOffer]; // e origin offer info

            // e check if the origin offer collateralRate is the same as the new offer collateralRate
            if (_collateralRate != originOfferInfo.collateralRate) {
                revert InvalidCollateralRate();
            }
            originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
        }

        /// @dev transfer collateral when offer settle type is protected
        // e if the offerSettleType is Protected, the "maker" should pay the collateral to the capital pool
        if (makerInfo.offerSettleType == OfferSettleType.Protected) {
            uint256 transferAmount = OfferLibraries.getDepositAmount(
                // q why we use `offerInfo.collateralRate` instead of `_collateralRate` ?
                // @audit-high - the collateralRate is the previous collateralRate of the offer, not the new one
                offerInfo.offerType,
                offerInfo.collateralRate, // 10 , `_collateralRate` = 30
                _amount,
                true,
                Math.Rounding.Ceil
            );

            ITokenManager tokenManager = tadleFactory.getTokenManager();
            tokenManager.tillIn{value: msg.value}(_msgSender(), makerInfo.tokenAddress, transferAmount, false);
        }

        address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id); // stockInfo.id = 1, offerAddr = offerAddr1
        if (offerInfoMap[offerAddr].authority != address(0x0)) {
            revert OfferAlreadyExist();
        }

        /// @dev update offer info
        // e update the offer that initially was created by X maker and then taken by Y taker, so now taker Y becomes the maker
        offerInfoMap[offerAddr] = OfferInfo({
            id: stockInfo.id, // q why we use stockInfo.id instead of offerId ? we will have duplicate ids
            authority: _msgSender(), // e owner of this offer now becomes the taker(msg.sender)
            maker: offerInfo.maker,
            offerStatus: OfferStatus.Virgin,
            offerType: offerInfo.offerType,
            abortOfferStatus: AbortOfferStatus.Initialized,
            points: stockInfo.points,
            amount: _amount, // e he updates with the new amount
            collateralRate: _collateralRate, // e he updates with the new collateralRate
            usedPoints: 0,
            tradeTax: 0,
            settledPoints: 0,
            settledPointTokenAmount: 0,
            settledCollateralAmount: 0
        });

        // e give offer address to the stock so it can be taken now by someone else
        stockInfo.offer = offerAddr; // offerAddr1

        emit ListOffer(offerAddr, _stock, _msgSender(), stockInfo.points, _amount);
    }

    /**
     * @notice close offer
     * @param _stock stock address
     * @param _offer offer address
     * @notice Only offer owner can close offer
     * @dev Market place must be online
     * @dev Only offer status is virgin can be closed
     */

    // e if a maker creates an offer and in the future decides to close it
    // he needs to get back the collateral he deposited based on `getRefundAmount` function
    // which says what part of the offer has been used and accordingly how much collateral he can get back
    function closeOffer(address _stock, address _offer) external {
        OfferInfo storage offerInfo = offerInfoMap[_offer];
        // q (gas) stockInfo could be memory
        StockInfo storage stockInfo = stockInfoMap[_stock];

        // e check if the offer is the same as the stock offer
        if (stockInfo.offer != _offer) {
            revert InvalidOfferAccount(stockInfo.offer, _offer);
        }

        // e check if the msg.sender(the caller) is the owner of the offer(authority)
        if (offerInfo.authority != _msgSender()) {
            revert Errors.Unauthorized();
        }

        // e check if the offer status is not Virgin
        if (offerInfo.offerStatus != OfferStatus.Virgin) {
            revert InvalidOfferStatus();
        }

        MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
        /// @dev market place must be online
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();
        MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);

        // e check if the marketplace is online
        marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);

        /**
         * @dev update refund token from capital pool to balance
         * @dev offer settle type is protected or original offer
         */
        if (makerInfo.offerSettleType == OfferSettleType.Protected || stockInfo.preOffer == address(0x0)) {
            // e calculate the refund amount that should be transferred back to the maker based on used points
            uint256 refundAmount = OfferLibraries.getRefundAmount(
                offerInfo.offerType, offerInfo.amount, offerInfo.points, offerInfo.usedPoints, offerInfo.collateralRate
            );

            ITokenManager tokenManager = tadleFactory.getTokenManager();
            // e transfer the refund amount into user balance from the capital pool
            tokenManager.addTokenBalance(
                TokenBalanceType.MakerRefund, _msgSender(), makerInfo.tokenAddress, refundAmount
            );
        }

        // e set the offerStatus to `Canceled`
        // q how we can manipulate and not update the offer status so the function will be reentrant ? 
        offerInfo.offerStatus = OfferStatus.Canceled;
        emit CloseOffer(_offer, _msgSender());
    }

    /**
     * @notice relist offer
     * @param _stock stock address
     * @param _offer offer address
     * @notice Only offer owner can relist offer
     * @dev Market place must be online
     * @dev Only offer status is canceled can be relisted
     */
    // e if a maker closes an offer and in the future he wants to relist it
    // he can call this function to change the status back to Virgin
    // but he needs to pay back the collateral(which is the same as the refund amount) again
    function relistOffer(address _stock, address _offer) external payable {
        OfferInfo storage offerInfo = offerInfoMap[_offer];
        StockInfo storage stockInfo = stockInfoMap[_stock];

        // e check if the stock is associated with the offer
        if (stockInfo.offer != _offer) {
            revert InvalidOfferAccount(stockInfo.offer, _offer);
        }

        // e check if the msg.sender(the caller) is the owner of the offer(authority)
        if (offerInfo.authority != _msgSender()) {
            revert Errors.Unauthorized();
        }

        // e check if the offer has been canceled
        if (offerInfo.offerStatus != OfferStatus.Canceled) {
            revert InvalidOfferStatus();
        }

        /// @dev market place must be online
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();

        MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
        MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);

        // e check if the marketplace is online
        marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);

        /**
         * @dev transfer refund token from user to capital pool
         * @dev offer settle type is protected or original offer
         */
        if (makerInfo.offerSettleType == OfferSettleType.Protected || stockInfo.preOffer == address(0x0)) {
            // e calculate the refund amount that should be deposited back to the protocol in order to relist the closed offer based on used points
            uint256 depositAmount = OfferLibraries.getRefundAmount(
                offerInfo.offerType, offerInfo.amount, offerInfo.points, offerInfo.usedPoints, offerInfo.collateralRate
            );

            ITokenManager tokenManager = tadleFactory.getTokenManager();
            // e deposit the deposit amount to the capital pool
            tokenManager.tillIn{value: msg.value}(_msgSender(), makerInfo.tokenAddress, depositAmount, false);
        }

        /// @dev update offer status to virgin
        // e set back the offerStatus to Virgin
        offerInfo.offerStatus = OfferStatus.Virgin;
        emit RelistOffer(_offer, _msgSender());
    }

    /**
     * @notice abort ask offer
     * @param _stock stock address
     * @param _offer offer address
     * @notice Only offer owner can abort ask offer
     * @dev Only offer status is virgin or canceled can be aborted
     * @dev Market place must be online
     */

    // e purpose of this function is to allow the maker to abort the offer he created and get back his unused collateral
    function abortAskOffer(address _stock, address _offer) external {
        StockInfo storage stockInfo = stockInfoMap[_stock];
        OfferInfo storage offerInfo = offerInfoMap[_offer];

        // e check if the caller is the owner of the offer
        if (offerInfo.authority != _msgSender()) {
            revert Errors.Unauthorized();
        }

        // e check if the stock is associated with the offer
        if (stockInfo.offer != _offer) {
            revert InvalidOfferAccount(stockInfo.offer, _offer);
        }

        // e check if the offerInfo is an ask offer
        if (offerInfo.offerType != OfferType.Ask) {
            revert InvalidOfferType(OfferType.Ask, offerInfo.offerType);
        }
        
        // e check if the abortOfferStatus is Initialized
        // note if the offer is listed by a taker and we are in Turbo Mode, the abortOfferStatus will be SubOfferListed
        if (offerInfo.abortOfferStatus != AbortOfferStatus.Initialized) {
            revert InvalidAbortOfferStatus(AbortOfferStatus.Initialized, offerInfo.abortOfferStatus);
        }

        // e check if offerStatus is either Virgin or Canceled
        if (offerInfo.offerStatus != OfferStatus.Virgin && offerInfo.offerStatus != OfferStatus.Canceled) {
            revert InvalidOfferStatus();
        }

        MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker]; // q why it's storage and not memory ?

        // e check if not listed by a taker, the initial abortOfferStatus is Initialized so it won't be catched by the previous check
        // so we check if the offerSettleType is Turbo and the offer is not listed by a taker
        if (makerInfo.offerSettleType == OfferSettleType.Turbo && stockInfo.preOffer != address(0x0)) {
            revert InvalidOffer();
        }

        /// @dev market place must be online
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();
        MarketPlaceInfo memory marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);
        // e check if the marketplace is online
        marketPlaceInfo.checkMarketPlaceStatus(block.timestamp, MarketPlaceStatus.Online);

        uint256 remainingAmount; // 0
        // e check if the offerStatus is Virgin (meaning it's collaterized)
        if (offerInfo.offerStatus == OfferStatus.Virgin) {
            remainingAmount = offerInfo.amount;
        } else {
            // e if the status is Canceled, calculate the remaining amount based on the used points
            remainingAmount = offerInfo.amount.mulDiv(offerInfo.usedPoints, offerInfo.points, Math.Rounding.Floor);
        }

        // e based on the remaining amount and collateralRate, calculate the amount that should be transferred back to the maker
        uint256 transferAmount = OfferLibraries.getDepositAmount(
            offerInfo.offerType, offerInfo.collateralRate, remainingAmount, true, Math.Rounding.Floor
        ); // e transferAmount = remaining
        uint256 totalUsedAmount = offerInfo.amount.mulDiv(offerInfo.usedPoints, offerInfo.points, Math.Rounding.Ceil);
        // e calculate the total deposit amount based on the collateralRate
        uint256 totalDepositAmount = OfferLibraries.getDepositAmount(
            offerInfo.offerType, offerInfo.collateralRate, totalUsedAmount, false, Math.Rounding.Ceil
        ); // e totalDeposited = used

        ///@dev update refund amount for offer authority
        uint256 makerRefundAmount; // 0
        if (transferAmount > totalDepositAmount) {
            // e if the user has used less than the remaining amount, he will get back the difference
            makerRefundAmount = transferAmount - totalDepositAmount;
        } else {
            // e if the user has used more than the remaining amount, he will get back the 0
            makerRefundAmount = 0;
        }

        ITokenManager tokenManager = tadleFactory.getTokenManager();
        tokenManager.addTokenBalance(
            TokenBalanceType.MakerRefund, _msgSender(), makerInfo.tokenAddress, makerRefundAmount
        );

        // e update the abortOfferStatus to Aborted
        offerInfo.abortOfferStatus = AbortOfferStatus.Aborted;
        // e update the offerStatus to Settled
        offerInfo.offerStatus = OfferStatus.Settled;

        emit AbortAskOffer(_offer, _msgSender());
    }

    /**
     * @notice abort bid taker
     * @param _stock stock address
     * @param _offer offer address
     * @notice Only offer owner can abort bid taker
     * @dev Only offer abort status is aborted can be aborted
     * @dev Update stock authority refund amount
     */

    // e purpose of this function is to allow the taker to abort the offer he took and get back his unused collateral
    function abortBidTaker(address _stock, address _offer) external {
        StockInfo storage stockInfo = stockInfoMap[_stock];
        OfferInfo storage preOfferInfo = offerInfoMap[_offer];

        // e check if the caller is the owner of the stock
        if (stockInfo.authority != _msgSender()) {
            revert Errors.Unauthorized();
        }

        // e check if the stock is taken by a taker
        if (stockInfo.preOffer != _offer) {
            revert InvalidOfferAccount(stockInfo.preOffer, _offer);
        }

        // e check if the stock status is Initialized
        if (stockInfo.stockStatus != StockStatus.Initialized) {
            revert InvalidStockStatus(StockStatus.Initialized, stockInfo.stockStatus);
        }

        // e check if the abortOfferStatus is Aborted
        if (preOfferInfo.abortOfferStatus != AbortOfferStatus.Aborted) {
            revert InvalidAbortOfferStatus(AbortOfferStatus.Aborted, preOfferInfo.abortOfferStatus);
        }

        uint256 depositAmount = stockInfo.points.mulDiv(preOfferInfo.points, preOfferInfo.amount, Math.Rounding.Floor);

        uint256 transferAmount = OfferLibraries.getDepositAmount(
            preOfferInfo.offerType, preOfferInfo.collateralRate, depositAmount, false, Math.Rounding.Floor
        );

        MakerInfo storage makerInfo = makerInfoMap[preOfferInfo.maker];
        ITokenManager tokenManager = tadleFactory.getTokenManager();
        tokenManager.addTokenBalance(TokenBalanceType.MakerRefund, _msgSender(), makerInfo.tokenAddress, transferAmount);

        // e update the stock status to Finished
        stockInfo.stockStatus = StockStatus.Finished;

        emit AbortBidTaker(_offer, _msgSender());
    }

    /**
     * @dev Update offer status
     * @notice Only called by DeliveryPlace
     * @param _offer offer address
     * @param _status new status
     */
    function updateOfferStatus(address _offer, OfferStatus _status)
        external
        onlyDeliveryPlace(tadleFactory, _msgSender())
    {
        OfferInfo storage offerInfo = offerInfoMap[_offer];
        offerInfo.offerStatus = _status;

        emit OfferStatusUpdated(_offer, _status);
    }

    /**
     * @dev Update stock status
     * @notice Only called by DeliveryPlace
     * @param _stock stock address
     * @param _status new status
     */
    function updateStockStatus(address _stock, StockStatus _status)
        external
        onlyDeliveryPlace(tadleFactory, _msgSender())
    {
        StockInfo storage stockInfo = stockInfoMap[_stock];
        stockInfo.stockStatus = _status;

        emit StockStatusUpdated(_stock, _status);
    }

    /**
     * @dev Settled ask offer
     * @notice Only called by DeliveryPlace
     * @param _offer offer address
     * @param _settledPoints settled points
     * @param _settledPointTokenAmount settled point token amount
     */
    function settledAskOffer(address _offer, uint256 _settledPoints, uint256 _settledPointTokenAmount)
        external
        onlyDeliveryPlace(tadleFactory, _msgSender())
    {
        OfferInfo storage offerInfo = offerInfoMap[_offer];
        offerInfo.settledPoints = _settledPoints;
        offerInfo.settledPointTokenAmount = _settledPointTokenAmount;
        offerInfo.offerStatus = OfferStatus.Settled;

        emit SettledAskOffer(_offer, _settledPoints, _settledPointTokenAmount);
    }

    /**
     * @dev Settle ask taker
     * @notice Only called by DeliveryPlace
     * @param _offer offer address
     * @param _stock stock address
     * @param _settledPoints settled points
     * @param _settledPointTokenAmount settled point token amount
     */
    function settleAskTaker(address _offer, address _stock, uint256 _settledPoints, uint256 _settledPointTokenAmount)
        external
        onlyDeliveryPlace(tadleFactory, _msgSender())
    {
        StockInfo storage stockInfo = stockInfoMap[_stock];
        OfferInfo storage offerInfo = offerInfoMap[_offer];

        offerInfo.settledPoints = offerInfo.settledPoints + _settledPoints;
        offerInfo.settledPointTokenAmount = offerInfo.settledPointTokenAmount + _settledPointTokenAmount;

        stockInfo.stockStatus = StockStatus.Finished;

        emit SettledBidTaker(_offer, _stock, _settledPoints, _settledPointTokenAmount);
    }

    /**
     * @dev Get offer info by offer address
     * @param _offer offer address
     */
    function getOfferInfo(address _offer) external view returns (OfferInfo memory _offerInfo) {
        return offerInfoMap[_offer];
    }

    /**
     * @dev Get stock info by stock address
     * @param _stock stock address
     */
    function getStockInfo(address _stock) external view returns (StockInfo memory _stockInfo) {
        return stockInfoMap[_stock];
    }

    /**
     * @dev Get maker info by maker address
     * @param _maker maker address
     */
    function getMakerInfo(address _maker) external view returns (MakerInfo memory _makerInfo) {
        return makerInfoMap[_maker];
    }

    function _depositTokenWhenCreateTaker(
        uint256 platformFee,
        uint256 depositAmount,
        uint256 tradeTax,
        MakerInfo storage makerInfo, // @audit-gas - why storage ?
        OfferInfo storage offerInfo, // @audit-gas - why storage ?
        ITokenManager tokenManager
    ) internal {
        // e based on the collateralRate and the points calculate the amount that should be transferred to the capital pool
        uint256 transferAmount = OfferLibraries.getDepositAmount(
            offerInfo.offerType, offerInfo.collateralRate, depositAmount, false, Math.Rounding.Ceil
        );

        // e to this transferAmount we add the platformFee and the tradeTax
        transferAmount = transferAmount + platformFee + tradeTax;

        // e deposit whole amount to the capital pool
        tokenManager.tillIn{value: msg.value}(_msgSender(), makerInfo.tokenAddress, transferAmount, false);
    }

    function _updateReferralBonus(
        uint256 platformFee,
        uint256 depositAmount,
        address stockAddr,
        MakerInfo storage makerInfo,
        ReferralInfo memory referralInfo,
        ITokenManager tokenManager
    ) internal returns (uint256 remainingPlatformFee) {
        // e check if the caller(refferer) is the zero address (no refferer)
        if (referralInfo.referrer == address(0x0)) {
            remainingPlatformFee = platformFee;
        } else {
            /**
             * @dev calculate referrer referral bonus and authority referral bonus
             * @dev calculate remaining platform fee
             * @dev remaining platform fee = platform fee - referrer referral bonus - authority referral bonus
             * @dev referrer referral bonus = platform fee * referrer rate
             * @dev authority referral bonus = platform fee * authority rate
             * @dev emit ReferralBonus
             */

            // e calculate the refferer bonus -> platfromFee * referrerRate / REFERRAL_RATE_DECIMAL_SCALER
            uint256 referrerReferralBonus = platformFee.mulDiv(
                referralInfo.referrerRate, Constants.REFERRAL_RATE_DECIMAL_SCALER, Math.Rounding.Floor
            );

            /**
             * @dev update referrer referral bonus
             * @dev update authority referral bonus
             */

            // e add to user balance mapping the reffererReferralBonus (refferer)
            tokenManager.addTokenBalance(
                TokenBalanceType.ReferralBonus, referralInfo.referrer, makerInfo.tokenAddress, referrerReferralBonus
            );

            // e calculate the authority(msg.sender) referral bonus -> platformFee * authorityRate / REFERRAL_RATE_DECIMAL_SCALER
            uint256 authorityReferralBonus = platformFee.mulDiv(
                referralInfo.authorityRate, Constants.REFERRAL_RATE_DECIMAL_SCALER, Math.Rounding.Floor
            );

            // e add to user balance mapping the authorityReferralBonus (authority)
            tokenManager.addTokenBalance(
                TokenBalanceType.ReferralBonus, _msgSender(), makerInfo.tokenAddress, authorityReferralBonus
            );

            // e calculate the remainingPlatformFee
            remainingPlatformFee = platformFee - referrerReferralBonus - authorityReferralBonus;

            /// @dev emit ReferralBonus
            emit ReferralBonus(
                stockAddr,
                _msgSender(),
                referralInfo.referrer,
                authorityReferralBonus,
                referrerReferralBonus,
                depositAmount,
                platformFee
            );
        }
    }

    function _updateTokenBalanceWhenCreateTaker(
        address _offer,
        uint256 _tradeTax,
        uint256 _depositAmount,
        OfferInfo storage offerInfo,
        MakerInfo storage makerInfo,
        ITokenManager tokenManager
    ) internal {
        // e if offers match or offerSettleType is protected then add the trade tax to the maker(who created the offer)
        // q aren't makerInfo.authority = offerInfo.authority ? (redundant check ?)
        if (_offer == makerInfo.originOffer || makerInfo.offerSettleType == OfferSettleType.Protected) {
            tokenManager.addTokenBalance(
                TokenBalanceType.TaxIncome, offerInfo.authority, makerInfo.tokenAddress, _tradeTax
            );
        } else {
            tokenManager.addTokenBalance(
                TokenBalanceType.TaxIncome, makerInfo.authority, makerInfo.tokenAddress, _tradeTax
            );
        }

        /// @dev update sales revenue
        // e if it's a sell offer then add the deposit amount to the maker(who created the offer)
        if (offerInfo.offerType == OfferType.Ask) {
            tokenManager.addTokenBalance(
                TokenBalanceType.SalesRevenue, offerInfo.authority, makerInfo.tokenAddress, _depositAmount
            );
            // e if it's a buy offer then add the deposit amount to the msg.sender (taker - who took the offer)
        } else {
            tokenManager.addTokenBalance(
                TokenBalanceType.SalesRevenue, _msgSender(), makerInfo.tokenAddress, _depositAmount
            );
        }
    }
}
