// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.13;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {DeliveryPlaceStorage} from "../storage/DeliveryPlaceStorage.sol";
import {OfferStatus, StockStatus, OfferType, StockType, OfferSettleType} from "../storage/OfferStatus.sol";
import {ITadleFactory} from "../factory/ITadleFactory.sol";
import {IDeliveryPlace} from "../interfaces/IDeliveryPlace.sol";
import {ISystemConfig, MarketPlaceInfo, MarketPlaceStatus} from "../interfaces/ISystemConfig.sol";
import {IPerMarkets, OfferInfo, StockInfo, MakerInfo} from "../interfaces/IPerMarkets.sol";
import {TokenBalanceType, ITokenManager} from "../interfaces/ITokenManager.sol";
import {RelatedContractLibraries} from "../libraries/RelatedContractLibraries.sol";
import {MarketPlaceLibraries} from "../libraries/MarketPlaceLibraries.sol";
import {OfferLibraries} from "../libraries/OfferLibraries.sol";
import {Rescuable} from "../utils/Rescuable.sol";
import {Errors} from "../utils/Errors.sol";

/**
 * @title DeliveryPlace
 * @notice Implement the delivery place
 */
contract DeliveryPlace is DeliveryPlaceStorage, Rescuable, IDeliveryPlace {
    using Math for uint256;
    using RelatedContractLibraries for ITadleFactory;

    constructor() Rescuable() {}

    /**
     * @notice Close bid offer
     * @dev caller must be offer authority
     * @dev offer type must Bid
     * @dev offer status must be Settling
     * @dev refund amount = offer amount - used amount
     */
    
    // This function allows the bid offer's authority (the maker) to close the bid offer
    // before it has progressed beyond the "Virgin" status 
    // (i.e., before the offer has been fully accepted or settled).
    function closeBidOffer(address _offer) external {
        (OfferInfo memory offerInfo, MakerInfo memory makerInfo,, MarketPlaceStatus status) = getOfferInfo(_offer);

        // e check if the caller is the offer authority
        if (_msgSender() != offerInfo.authority) {
            revert Errors.Unauthorized();
        }

        // e check if offer type is Bid(Buy)
        if (offerInfo.offerType == OfferType.Ask) {
            revert InvalidOfferType(OfferType.Bid, OfferType.Ask);
        }

        // e check if the market place status is either AskSettling or BidSettling (means the settlement time has passed)
        if (status != MarketPlaceStatus.AskSettling && status != MarketPlaceStatus.BidSettling) {
            revert InvaildMarketPlaceStatus();
        }

        // e check if the offer status is Virgin
        if (offerInfo.offerStatus != OfferStatus.Virgin) {
            revert InvalidOfferStatus();
        }

        // e calculate the refund amount based on used points
        uint256 refundAmount = OfferLibraries.getRefundAmount(
            offerInfo.offerType, offerInfo.amount, offerInfo.points, offerInfo.usedPoints, offerInfo.collateralRate
        );

        ITokenManager tokenManager = tadleFactory.getTokenManager();
        // e transfer to the maker the refund amount
        tokenManager.addTokenBalance(TokenBalanceType.MakerRefund, _msgSender(), makerInfo.tokenAddress, refundAmount);

        IPerMarkets perMarkets = tadleFactory.getPerMarkets();
        // e update the offer status to Settled
        perMarkets.updateOfferStatus(_offer, OfferStatus.Settled);

        emit CloseBidOffer(makerInfo.marketPlace, offerInfo.maker, _offer, _msgSender());
    }

    /**
     * @notice Close bid taker
     * @dev caller must be stock authority
     * @dev stock type must Bid
     * @dev offer status must be Settled
     * @param _stock stock address
     */

    // This function is designed for the taker of the bid offer. 
    // The taker can close the bid offer after the bid has been settled.
    function closeBidTaker(address _stock) external {
        IPerMarkets perMarkets = tadleFactory.getPerMarkets();
        ITokenManager tokenManager = tadleFactory.getTokenManager();
        StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);

        // e check if an offer has been taken (if it's not preOffer will be initially set to 0x0)
        if (stockInfo.preOffer == address(0x0)) {
            revert InvalidStock();
        }

        // e check if the offer is OfferType.Bid (=StockType.Ask)
        if (stockInfo.stockType == StockType.Ask) {
            revert InvalidStockType();
        }

        // e check if the functions is called by the taker of the bid offer
        if (_msgSender() != stockInfo.authority) {
            revert Errors.Unauthorized();
        }

        // e get the offer and maker info of the offer
        (OfferInfo memory preOfferInfo, MakerInfo memory makerInfo,,) = getOfferInfo(stockInfo.preOffer);

        OfferInfo memory offerInfo;
        uint256 userRemainingPoints;
        if (makerInfo.offerSettleType == OfferSettleType.Protected) {
            // e if offerSettleType is Protected, the offerInfo is the preOfferInfo
            offerInfo = preOfferInfo;
            // e userRemainingPoints = used points by the taker
            userRemainingPoints = stockInfo.points;
        } else {
            offerInfo = perMarkets.getOfferInfo(makerInfo.originOffer);
            // q is it not always going into the case where stockInfo.offer == address(0x0) ?
            if (stockInfo.offer == address(0x0)) {
                userRemainingPoints = stockInfo.points;
            } else {
                OfferInfo memory listOfferInfo = perMarkets.getOfferInfo(stockInfo.offer);
                userRemainingPoints = listOfferInfo.points - listOfferInfo.usedPoints;
            }
        }

        // e if the taker has no remaining points, revert
        if (userRemainingPoints == 0) {
            revert InsufficientRemainingPoints();
        }

        // e check if the offerStatus is Settled
        if (offerInfo.offerStatus != OfferStatus.Settled) {
            revert InvalidOfferStatus();
        }

        // e check if stockStatus is Initialized
        if (stockInfo.stockStatus != StockStatus.Initialized) {
            revert InvalidStockStatus();
        }

        uint256 collateralFee;
        if (offerInfo.usedPoints > offerInfo.settledPoints) {
            if (offerInfo.offerStatus == OfferStatus.Virgin) {
                collateralFee = OfferLibraries.getDepositAmount(
                    offerInfo.offerType, offerInfo.collateralRate, offerInfo.amount, true, Math.Rounding.Floor
                );
            } else {
                uint256 usedAmount =
                    offerInfo.amount.mulDiv(offerInfo.usedPoints, offerInfo.points, Math.Rounding.Floor);

                collateralFee = OfferLibraries.getDepositAmount(
                    offerInfo.offerType, offerInfo.collateralRate, usedAmount, true, Math.Rounding.Floor
                );
            }
        }

        uint256 userCollateralFee = collateralFee.mulDiv(userRemainingPoints, offerInfo.usedPoints, Math.Rounding.Floor);

        tokenManager.addTokenBalance(
            TokenBalanceType.RemainingCash, _msgSender(), makerInfo.tokenAddress, userCollateralFee
        );
        uint256 pointTokenAmount =
            offerInfo.settledPointTokenAmount.mulDiv(userRemainingPoints, offerInfo.usedPoints, Math.Rounding.Floor);
        tokenManager.addTokenBalance(
            TokenBalanceType.PointToken, _msgSender(), makerInfo.tokenAddress, pointTokenAmount
        );

        perMarkets.updateStockStatus(_stock, StockStatus.Finished);

        emit CloseBidTaker(
            makerInfo.marketPlace, offerInfo.maker, _stock, _msgSender(), userCollateralFee, pointTokenAmount
        );
    }

    /**
     * @notice Settle ask maker
     * @dev caller must be offer authority
     * @dev offer status must be Virgin or Canceled
     * @dev market place status must be AskSettling
     * @param _offer offer address
     * @param _settledPoints settled points
     */
    function settleAskMaker(address _offer, uint256 _settledPoints) external {
        (
            OfferInfo memory offerInfo,
            MakerInfo memory makerInfo,
            MarketPlaceInfo memory marketPlaceInfo,
            MarketPlaceStatus status
        ) = getOfferInfo(_offer);

        // e checkIf `_settledPoints` is less than or equal to the used points
        if (_settledPoints > offerInfo.usedPoints) {
            revert InvalidPoints();
        }

        // e check if marketplace has fixed ratio
        if (marketPlaceInfo.fixedratio) {
            revert FixedRatioUnsupported();
        }

        // e check if offerType is Ask
        if (offerInfo.offerType == OfferType.Bid) {
            revert InvalidOfferType(OfferType.Ask, OfferType.Bid);
        }

        // e check if the offer status either Virgin or Canceled
        if (offerInfo.offerStatus != OfferStatus.Virgin && offerInfo.offerStatus != OfferStatus.Canceled) {
            revert InvalidOfferStatus();
        }

        // e check if settlement time has passed (market place status is AskSettling)
        if (status == MarketPlaceStatus.AskSettling) {
            // e check if the caller is the offer authority
            if (_msgSender() != offerInfo.authority) {
                revert Errors.Unauthorized();
            }
        } else {
            if (_msgSender() != owner()) {
                revert Errors.Unauthorized();
            }
            if (_settledPoints > 0) {
                revert InvalidPoints();
            }
        }

        // e calculate the settled point token amount based on tokenPerPoint and settledPoints
        uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint * _settledPoints;

        ITokenManager tokenManager = tadleFactory.getTokenManager();
        if (settledPointTokenAmount > 0) {
            // e transfer the settled point token amount to the capital pool
            tokenManager.tillIn(_msgSender(), marketPlaceInfo.tokenAddress, settledPointTokenAmount, true);
        }

        uint256 makerRefundAmount;
        // e if all the points are settled
        if (_settledPoints == offerInfo.usedPoints) {
            if (offerInfo.offerStatus == OfferStatus.Virgin) {
                makerRefundAmount = OfferLibraries.getDepositAmount(
                    offerInfo.offerType, offerInfo.collateralRate, offerInfo.amount, true, Math.Rounding.Floor
                );
            } else {
                uint256 usedAmount =
                    offerInfo.amount.mulDiv(offerInfo.usedPoints, offerInfo.points, Math.Rounding.Floor);

                makerRefundAmount = OfferLibraries.getDepositAmount(
                    offerInfo.offerType, offerInfo.collateralRate, usedAmount, true, Math.Rounding.Floor
                );
            }

            tokenManager.addTokenBalance(
                TokenBalanceType.SalesRevenue, _msgSender(), makerInfo.tokenAddress, makerRefundAmount
            );
        }

        IPerMarkets perMarkets = tadleFactory.getPerMarkets();
        // e update offer settledPoints, settledPointTokenAmount and offerStatus(to Settled)
        perMarkets.settledAskOffer(_offer, _settledPoints, settledPointTokenAmount);

        emit SettleAskMaker(
            makerInfo.marketPlace,
            offerInfo.maker,
            _offer,
            _msgSender(),
            _settledPoints,
            settledPointTokenAmount,
            makerRefundAmount
        );
    }

    /**
     * @notice Settle ask taker
     * @dev caller must be stock authority
     * @dev market place status must be AskSettling
     * @param _stock stock address
     * @param _settledPoints settled points
     * @notice _settledPoints must be less than or equal to stock points
     */
    function settleAskTaker(address _stock, uint256 _settledPoints) external {
        IPerMarkets perMarkets = tadleFactory.getPerMarkets();
        StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);

        (
            OfferInfo memory offerInfo,
            MakerInfo memory makerInfo,
            MarketPlaceInfo memory marketPlaceInfo,
            MarketPlaceStatus status
        ) = getOfferInfo(stockInfo.preOffer);

        if (stockInfo.stockStatus != StockStatus.Initialized) {
            revert InvalidStockStatus();
        }

        if (marketPlaceInfo.fixedratio) {
            revert FixedRatioUnsupported();
        }
        if (stockInfo.stockType == StockType.Bid) {
            revert InvalidStockType();
        }
        if (_settledPoints > stockInfo.points) {
            revert InvalidPoints();
        }

        if (status == MarketPlaceStatus.AskSettling) {
            if (_msgSender() != offerInfo.authority) {
                revert Errors.Unauthorized();
            }
        } else {
            if (_msgSender() != owner()) {
                revert Errors.Unauthorized();
            }
            if (_settledPoints > 0) {
                revert InvalidPoints();
            }
        }

        uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint * _settledPoints;
        ITokenManager tokenManager = tadleFactory.getTokenManager();
        if (settledPointTokenAmount > 0) {
            tokenManager.tillIn(_msgSender(), marketPlaceInfo.tokenAddress, settledPointTokenAmount, true);

            tokenManager.addTokenBalance(
                TokenBalanceType.PointToken, offerInfo.authority, makerInfo.tokenAddress, settledPointTokenAmount
            );
        }

        uint256 collateralFee = OfferLibraries.getDepositAmount(
            offerInfo.offerType, offerInfo.collateralRate, stockInfo.amount, false, Math.Rounding.Floor
        );

        if (_settledPoints == stockInfo.points) {
            tokenManager.addTokenBalance(
                TokenBalanceType.RemainingCash, _msgSender(), makerInfo.tokenAddress, collateralFee
            );
        } else {
            tokenManager.addTokenBalance(
                TokenBalanceType.MakerRefund, offerInfo.authority, makerInfo.tokenAddress, collateralFee
            );
        }

        perMarkets.settleAskTaker(stockInfo.preOffer, _stock, _settledPoints, settledPointTokenAmount);

        emit SettleAskTaker(
            makerInfo.marketPlace,
            offerInfo.maker,
            _stock,
            stockInfo.preOffer,
            _msgSender(),
            _settledPoints,
            settledPointTokenAmount,
            collateralFee
        );
    }


    // e get the offer, maker, marketplace info and the status of the marketplace
    function getOfferInfo(address _offer)
        internal
        view
        returns (
            OfferInfo memory offerInfo,
            MakerInfo memory makerInfo,
            MarketPlaceInfo memory marketPlaceInfo,
            MarketPlaceStatus status
        )
    {
        IPerMarkets perMarkets = tadleFactory.getPerMarkets();
        ISystemConfig systemConfig = tadleFactory.getSystemConfig();

        offerInfo = perMarkets.getOfferInfo(_offer);
        makerInfo = perMarkets.getMakerInfo(offerInfo.maker);
        marketPlaceInfo = systemConfig.getMarketPlaceInfo(makerInfo.marketPlace);

        status = MarketPlaceLibraries.getMarketPlaceStatus(block.timestamp, marketPlaceInfo);
    }
}
