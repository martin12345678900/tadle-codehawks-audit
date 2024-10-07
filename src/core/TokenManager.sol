// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {TokenManagerStorage} from "../storage/TokenManagerStorage.sol";
import {ITadleFactory} from "../factory/ITadleFactory.sol";
import {ITokenManager, TokenBalanceType} from "../interfaces/ITokenManager.sol";
import {ICapitalPool} from "../interfaces/ICapitalPool.sol";
import {IWrappedNativeToken} from "../interfaces/IWrappedNativeToken.sol";
import {RelatedContractLibraries} from "../libraries/RelatedContractLibraries.sol";
import {Rescuable} from "../utils/Rescuable.sol";
import {Related} from "../utils/Related.sol";
import {Errors} from "../utils/Errors.sol";

/**
 * @title TokenManager
 * @dev 1. Till in: Tansfer token from msg sender to capital pool
 *      2. Withdraw: Transfer token from capital pool to msg sender
 * @notice Only support ERC20 or native token
 * @notice Only support white listed token
 */
contract TokenManager is TokenManagerStorage, Rescuable, Related, ITokenManager {
    constructor() Rescuable() {}

    modifier onlyInTokenWhiteList(bool _isPointToken, address _tokenAddress) {
        if (!_isPointToken && !tokenWhiteListed[_tokenAddress]) {
            revert TokenIsNotWhiteListed(_tokenAddress);
        }

        _;
    }

    /**
     * @notice Set wrapped native token
     * @dev Caller must be owner
     * @param _wrappedNativeToken Wrapped native token
     */

    // @audit-previous - missing zero address check for wrappedNativeToken
    function initialize(address _wrappedNativeToken) external onlyOwner {
        wrappedNativeToken = _wrappedNativeToken;
    }

    /**
     * @notice Till in, Transfer token from msg sender to capital pool
     * @param _accountAddress Account address
     * @param _tokenAddress Token address
     * @param _amount Transfer amount
     * @param _isPointToken The transfer token is pointToken
     * @notice Capital pool should be deployed
     * @dev Support ERC20 token and native token
     */

    // e preMarkets or deliveryPlace transfer native token or ERC20 token to capital pool
    function tillIn(address _accountAddress, address _tokenAddress, uint256 _amount, bool _isPointToken)
        external
        payable
        onlyRelatedContracts(tadleFactory, _msgSender()) // e caller of this function should be either preMarkets or deliveryPlace
        onlyInTokenWhiteList(_isPointToken, _tokenAddress) // e token should be in the white list + isPointToken should be true
    {
        /// @notice return if amount is 0
        if (_amount == 0) {
            return;
        }

        // e get capital pool address from factory
        address capitalPoolAddr = tadleFactory.relatedContracts(RelatedContractLibraries.CAPITAL_POOL);
        // e zero address check
        if (capitalPoolAddr == address(0x0)) {
            revert Errors.ContractIsNotDeployed();
        }


        // @audit-medium - we don't have a proper mechanism for differentiating between ERC20 WETH and ETH native token
        // so if the user passes proper wrappedNativeToken address but does not provide any msg.value, the function will revert
        if (_tokenAddress == wrappedNativeToken) {
            /**
             * @dev token is native token
             * @notice check msg value
             * @dev if msg value is less than _amount, revert
             * @dev wrap native token and transfer to capital pool
             */
            if (msg.value < _amount) {
                revert Errors.NotEnoughMsgValue(msg.value, _amount);
            }
            // e deposit ETH to the wrappedNativeToken contract and get WETH in return
            IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
            // transfer _amount wrapped native token to the capital pool
            // q how we are sure the wrapped native token gives to the token manager the WETH ?
            _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount);
        } else {
            /// @notice token is ERC20 token
            // e transfer the `_amount` ERC20 token from `_accountAddress` to the capital pool
            _transfer(_tokenAddress, _accountAddress, capitalPoolAddr, _amount, capitalPoolAddr);
        }

        emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
    }

    /**
     * @notice Add token balance
     * @dev Caller must be related contracts
     * @param _tokenBalanceType Token balance type
     * @param _accountAddress Account address
     * @param _tokenAddress Token address
     * @param _amount Claimable amount
     */
    function addTokenBalance(
        TokenBalanceType _tokenBalanceType,
        address _accountAddress,
        address _tokenAddress,
        uint256 _amount
    ) external onlyRelatedContracts(tadleFactory, _msgSender()) {
        userTokenBalanceMap[_accountAddress][_tokenAddress][_tokenBalanceType] += _amount;

        emit AddTokenBalance(_accountAddress, _tokenAddress, _tokenBalanceType, _amount);
    }

    /**
     * @notice Withdraw
     * @dev Caller must be owner
     * @param _tokenAddress Token address
     * @param _tokenBalanceType Token balance type
     */

    // @audit-previous - not a good practice to make `withdraw` function pausable, because it can be lead to block of the funds
    function withdraw(address _tokenAddress, TokenBalanceType _tokenBalanceType) external whenNotPaused {
        uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][_tokenAddress][_tokenBalanceType];

        if (claimAbleAmount == 0) {
            // @audit could be a better idea to revert here instead of returning
            return;
        }

        address capitalPoolAddr = tadleFactory.relatedContracts(RelatedContractLibraries.CAPITAL_POOL);

        // @audit-high we don't reset the user token balance after the withdrawal, so the user can withdraw the same amount multiple times
        // userTokenBalanceMap[_msgSender()][_tokenAddress][_tokenBalanceType] = 0;

        if (_tokenAddress == wrappedNativeToken) {
            /**
             * @dev token is native token
             * @dev transfer from capital pool to msg sender
             * @dev withdraw native token to token manager contract
             * @dev transfer native token to msg sender
             */

            // e transfer the claimable amount of wrapped native token from the capital pool to the token manager contract
            _transfer(wrappedNativeToken, capitalPoolAddr, address(this), claimAbleAmount, capitalPoolAddr);

            // e withdraw the claimable amount of WETH and get back ETH
            IWrappedNativeToken(wrappedNativeToken).withdraw(claimAbleAmount);
            // e transfer from token manager contract to caller the claimable amount of ETH
            // @audit-previous - transfer is not recommended, because it has 2300 gas limit, so if the msg.sender is a contract with
            // more complex fallback function (like updating state, etc...) it will revert and the funds will be locked in the contract
            payable(msg.sender).transfer(claimAbleAmount);
        } else {
            /**
             * @dev token is ERC20 token
             * @dev transfer from capital pool to msg sender
             */

            // e if token is not wrapped native token, transfer the claimable amount of token from the capital pool to the caller
            _safe_transfer_from(_tokenAddress, capitalPoolAddr, _msgSender(), claimAbleAmount);
        }

        emit Withdraw(_msgSender(), _tokenAddress, _tokenBalanceType, claimAbleAmount);
    }

    /**
     * @notice Update token white list
     * @dev Caller must be owner
     * @param _tokens Token addresses
     * @param _isWhiteListed Is white listed
     */
    // @follow-up - seems ok
    function updateTokenWhiteListed(address[] calldata _tokens, bool _isWhiteListed) external onlyOwner {
        uint256 _tokensLength = _tokens.length;

        for (uint256 i = 0; i < _tokensLength;) {
            _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Internal Function: Update token white list
     * @param _token Token address
     * @param _isWhiteListed Is white listed
     */
    // @follow-up - seems ok
    function _updateTokenWhiteListed(address _token, bool _isWhiteListed) internal {
        // e set the token in the while list (true/false)
        tokenWhiteListed[_token] = _isWhiteListed;

        // e emit the event
        emit UpdateTokenWhiteListed(_token, _isWhiteListed);
    }

    /**
     * @notice Internal Function: Transfer token
     * @dev Transfer ERC20 token
     * @param _token ERC20 token address
     * @param _from From address
     * @param _to To address
     * @param _amount Transfer amount
     */

    // q can we break this function since it relies on balanceOf ?
    function _transfer(address _token, address _from, address _to, uint256 _amount, address _capitalPoolAddr)
        internal
    {
        // 1000 initial balance
        uint256 fromBalanceBef = IERC20(_token).balanceOf(_from); // balance of `from` address before transfer
        // 1000 initial balance
        uint256 toBalanceBef = IERC20(_token).balanceOf(_to); // balance of `to` address before transfer

        if (_from == _capitalPoolAddr && IERC20(_token).allowance(_from, address(this)) == 0x0) {
            // @audit-previous - approve function does not have a return value
            // @audit-high - we are passing address(this) to approve function, but it should be the tokenAddress 
            ICapitalPool(_capitalPoolAddr).approve(address(this));
        }

        // we have fee of 2% for each transfer
        // we try to transfer 500 tokens amount - 10 tokens fee
        // we should have as `from` balance 1000 - 500 = 500
        // we should have as `to` balance 1000 + 490 = 1490
        _safe_transfer_from(_token, _from, _to, _amount);

        uint256 fromBalanceAft = IERC20(_token).balanceOf(_from); // 500
        uint256 toBalanceAft = IERC20(_token).balanceOf(_to); // 1490

        // uint256 fee = _amount - toBalanceAft;

        if (fromBalanceAft != fromBalanceBef - _amount) {
            revert TransferFailed();
        }

        // @audit-medium - the check won't pass probably if the token has a transfer fee(for example USDT token)
        // 1490 != 1000 + 500
        if (toBalanceAft != toBalanceBef + _amount) {
            revert TransferFailed();
        }
    }
}
