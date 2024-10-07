// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20WithFee is ERC20 {
    uint256 public constant FEE_PERCENT = 200;  // Fee in percentage (e.g., 2% fee = 200, since we use 10000 basis points)

    constructor() ERC20("MockTokenFee", "MTF") {}

    // Override transfer to include fee logic
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        uint256 fee = (amount * FEE_PERCENT) / 10000;
        uint256 amountAfterFee = amount - fee;

        _transfer(_msgSender(), recipient, amountAfterFee);  // Transfer after fee deduction
        _transfer(_msgSender(), address(this), fee);         // Send fee to contract

        return true;
    }

    // Override transferFrom to include fee logic
    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        uint256 fee = (amount * FEE_PERCENT) / 10000;
        uint256 amountAfterFee = amount - fee;

        _transfer(sender, recipient, amountAfterFee);  // Transfer after fee deduction
        _transfer(sender, address(this), fee);         // Send fee to contract

        return true;
    }
}