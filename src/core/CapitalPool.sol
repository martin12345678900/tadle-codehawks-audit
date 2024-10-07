// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.13;

import {CapitalPoolStorage} from "../storage/CapitalPoolStorage.sol";
import {ICapitalPool} from "../interfaces/ICapitalPool.sol";
import {RelatedContractLibraries} from "../libraries/RelatedContractLibraries.sol";
import {Rescuable} from "../utils/Rescuable.sol";

/**
 * @title CapitalPool
 * @notice Implement the capital pool
 */

// e capital pool will hold the funds and will be able to approve the token manager to spend the funds
contract CapitalPool is CapitalPoolStorage, Rescuable, ICapitalPool {
    // e function selector of the approve function
    bytes4 private constant APPROVE_SELECTOR = bytes4(keccak256(bytes("approve(address,uint256)")));

    // error CallerIsNotTokenManager(address tokenManager, address caller);
    constructor() Rescuable() {}

    // modifier onlyTokenManager() {
    //     address tokenManager = tadleFactory.relatedContracts(RelatedContractLibraries.TOKEN_MANAGER);
    //     if (_msgSender() != tokenManager) {
    //         revert CallerIsNotTokenManager(tokenManager, _msgSender());
    //     }
    //     _;
    // }

    /**
     * @dev Approve token for token manager
     * @notice only can be called by token manager
     * @param tokenAddr address of token
     */

    // @audit-low - The approve function is not restricted to the token manager, 
    // so anyone call call this function to a malicious token contract and approve any address to spend the token. 
    // This could lead to a potential attack vector where an attacker could approve a malicious contract to spend the token. The approve function should be restricted to the token manager to prevent this attack vector.
    function approve(address tokenAddr) external {
        address tokenManager = tadleFactory.relatedContracts(RelatedContractLibraries.TOKEN_MANAGER);
        // e on token contract call .approve(address tokenManager, uint256 maxUint256)
        // @audit-previous - tokenAddr could be non-trusted address
        (bool success,) = tokenAddr.call(abi.encodeWithSelector(APPROVE_SELECTOR, tokenManager, type(uint256).max));

        if (!success) {
            revert ApproveFailed();
        }
    }
}
