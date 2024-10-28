// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Assignment2.sol";

contract DutchAuction is IDutchAuction {
    address public seller;

    address public winner;
    // function winner() public view returns (address) {}

    uint256 public finalPrice;
    // function finalPrice() public view returns (uint256) {}

    // Note: Contract creator should be the seller
    constructor(
        uint256 _initialPrice,
        uint256 _blockDecrement,
        uint256 _duration
    ) {}

    function bid() external payable override {}

    // Anyone can finalize the auction after the auction has ended
    function finalize() external override {}

    function currentPrice() public view override returns (uint256) {}
}
