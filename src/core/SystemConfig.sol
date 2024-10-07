// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.13;

import {SystemConfigStorage} from "../storage/SystemConfigStorage.sol";
import {ISystemConfig, ReferralInfo, MarketPlaceInfo, MarketPlaceStatus} from "../interfaces/ISystemConfig.sol";
import {Constants} from "../libraries/Constants.sol";
import {GenerateAddress} from "../libraries/GenerateAddress.sol";
import {Rescuable} from "../utils/Rescuable.sol";
import {Errors} from "../utils/Errors.sol";

/**
 * @title SystemConfig
 * @dev Contract of SystemConfig.
 * @dev Contains markets setting, referral setting, etc.
 */
contract SystemConfig is SystemConfigStorage, Rescuable, ISystemConfig {
    constructor() Rescuable() {}

    /**
     * @notice Set base platform fee rate and base referral rate
     * @dev Caller must be owner
     * @param _basePlatformFeeRate Base platform fee rate, default is 0.5%
     * @param _baseReferralRate Base referral rate, default is 30%
     */
    function initialize(uint256 _basePlatformFeeRate, uint256 _baseReferralRate) external onlyOwner {
        basePlatformFeeRate = _basePlatformFeeRate; // e owner can set the base platform fee rate
        baseReferralRate = _baseReferralRate; // e owner can set the base referral rates
    }

    /**
     * @notice Update referrer setting
     * @param _referrer Referrer address
     * @param _referrerRate Referrer rate (reward for the referrer)
     * @param _authorityRate Authority rate (reward for the trader)
     * @notice _referrerRate + _authorityRate = baseReferralRate + referralExtraRate
     * @notice _referrer != _msgSender()
     */

    // q is missing onlyOwner modifier ?
    function updateReferrerInfo(address _referrer, uint256 _referrerRate, uint256 _authorityRate) external {
        // e check if the referrer is the not caller
        if (_msgSender() == _referrer) {
            revert InvalidReferrer(_referrer);
        }

        // e check if referrer is zero address
        if (_referrer == address(0x0)) {
            revert Errors.ZeroAddress();
        }

        // e check if the referrer rate is less than the base referral rate
        if (_referrerRate < baseReferralRate) {
            revert InvalidReferrerRate(_referrerRate);
        }

        // e get refererr extra rate
        uint256 referralExtraRate = referralExtraRateMap[_referrer];
        // e calculate totalRate
        uint256 totalRate = baseReferralRate + referralExtraRate;

        // e check if the total rate is greater than the referral rate decimal scaler
        if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
            revert InvalidTotalRate(totalRate);
        }

        // e check if the referrer rate + authority rate is not equal to the total rate (as said in the notice)
        if (_referrerRate + _authorityRate != totalRate) {
            revert InvalidRate(_referrerRate, _authorityRate, totalRate);
        }

        // e update the referral info stgorage
        ReferralInfo storage referralInfo = referralInfoMap[_referrer];
        referralInfo.referrer = _referrer;
        referralInfo.referrerRate = _referrerRate;
        referralInfo.authorityRate = _authorityRate;

        // e emit the event
        emit UpdateReferrerInfo(msg.sender, _referrer, _referrerRate, _authorityRate);
    }

    /**
     * @notice Create market place
     * @param _marketPlaceName Market place name
     * @param _fixedratio Fixed ratio
     * @notice Caller must be owner
     * @notice _marketPlaceName must be unique
     * @notice _fixedratio is true if the market place is arbitration required
     */
    function createMarketPlace(string calldata _marketPlaceName, bool _fixedratio) external onlyOwner {
        address marketPlace = GenerateAddress.generateMarketPlaceAddress(_marketPlaceName); // e generate the address of the market place
        MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[marketPlace]; // e get the market place info from the mapping

        if (marketPlaceInfo.status != MarketPlaceStatus.UnInitialized) {
            // e if the market place is already uninitialized, revert
            revert MarketPlaceAlreadyInitialized();
        }

        marketPlaceInfo.status = MarketPlaceStatus.Online; // e set the status of the market place to online
        marketPlaceInfo.fixedratio = _fixedratio; // e set if the market place is arbitration required

        emit CreateMarketPlaceInfo(_marketPlaceName, marketPlace, _fixedratio); // e emit the event
    }

    /**
     * @notice Update market when settlement time is passed // q update market when settlement time is passed is not fulfilled as a condition ?
     * @param _marketPlaceName Market place name
     * @param _tokenAddress Token address
     * @param _tokenPerPoint Token per point
     * @param _tge TGE
     * @param _settlementPeriod Settlement period
     * @notice Caller must be owner
     */
    function updateMarket(
        string calldata _marketPlaceName,
        address _tokenAddress,
        uint256 _tokenPerPoint,
        uint256 _tge,
        uint256 _settlementPeriod
    ) external onlyOwner {
        address marketPlace = GenerateAddress.generateMarketPlaceAddress(_marketPlaceName); // e get the address of the market place

        MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[marketPlace]; // e get the market place info from the mapping

        if (marketPlaceInfo.status != MarketPlaceStatus.Online) {
            // e if the market place is not online, revert
            revert MarketPlaceNotOnline(marketPlaceInfo.status);
        }

        // e update the market place info
        marketPlaceInfo.tokenAddress = _tokenAddress;
        marketPlaceInfo.tokenPerPoint = _tokenPerPoint;
        marketPlaceInfo.tge = _tge; // token generation event = tge
        marketPlaceInfo.settlementPeriod = _settlementPeriod;

        emit UpdateMarket(_marketPlaceName, marketPlace, _tokenAddress, _tokenPerPoint, _tge, _settlementPeriod);
    }

    /**
     * @notice Update market place status
     * @param _marketPlaceName Market place name
     * @param _status Market place status
     * @notice Caller must be owner
     */
    function updateMarketPlaceStatus(string calldata _marketPlaceName, MarketPlaceStatus _status) external onlyOwner {
        address marketPlace = GenerateAddress.generateMarketPlaceAddress(_marketPlaceName); // e get the address of the market place
        MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[marketPlace]; // e get the market place info from the mapping
        marketPlaceInfo.status = _status; // e update the status of the market place
            // q why did not emit an event ?
    }

    /**
     * @notice Update base platform fee rate
     * @param _accountAddress Account address
     * @param _platformFeeRate Platform fee rate of user
     * @notice Caller must be owner
     */

    // e we can specify for each user his platform fee rate
    function updateUserPlatformFeeRate(address _accountAddress, uint256 _platformFeeRate) external onlyOwner {
        // q why using require instead of custom error ?
        require(_platformFeeRate <= Constants.PLATFORM_FEE_DECIMAL_SCALER, "Invalid platform fee rate"); // e require the platform fee rate to be less than or equal to the platform fee decimal scaler
        userPlatformFeeRate[_accountAddress] = _platformFeeRate;

        emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate);
    }

    /**
     * @notice Update referrer extra rate
     * @param _referrer Referrer address
     * @param _extraRate Extra rate
     * @notice Caller must be owner
     * @notice _extraRate + baseReferralRate <= REFERRAL_RATE_DECIMAL_SCALER
     */

    // e seems like the total rate should be less than or equal to the referral rate decimal scaler
    function updateReferralExtraRateMap(address _referrer, uint256 _extraRate) external onlyOwner {
        uint256 totalRate = _extraRate + baseReferralRate;
        if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
            revert InvalidTotalRate(totalRate);
        }
        referralExtraRateMap[_referrer] = _extraRate;
        emit UpdateReferralExtraRateMap(_referrer, _extraRate);
    }

    /// @dev Get base platform fee rate.
    function getBaseReferralRate() external view returns (uint256) {
        return baseReferralRate;
    }

    /**
     * @dev Get base platform fee rate.
     * @param _user address of user, create order by this user.
     */

    // e get user platform fee rate, if he doesn't have one, return the base platform fee rate
    function getPlatformFeeRate(address _user) external view returns (uint256) {
        if (userPlatformFeeRate[_user] == 0) {
            return basePlatformFeeRate;
        }

        return userPlatformFeeRate[_user];
    }

    /// @dev Get referral info by referrer
    function getReferralInfo(address _referrer) external view returns (ReferralInfo memory) {
        return referralInfoMap[_referrer];
    }

    /// @dev Get marketPlace info by marketPlace
    function getMarketPlaceInfo(address _marketPlace) external view returns (MarketPlaceInfo memory) {
        return marketPlaceInfoMap[_marketPlace];
    }
}
