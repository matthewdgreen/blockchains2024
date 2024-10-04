// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Assignment2.sol";

contract EnglishAuction is IEnglishAuction {
    uint256 public minIncrement;
    address public seller;

    address public winner;
    uint256 public finalPrice;

    address public highestBidder;
    // function highestBidder() public view returns (address) {}
    uint256 public highestBid;
    // function highestBid() public view returns (uint256) {}

    // Note: Contract creator should be the seller
    constructor(
        uint256 _initialPrice,
        uint256 _minIncrement,
        uint256 _biddingPeriod
    ) {}

    function bid() external payable override {}

    // Anyone can finalize the auction after the bidding period has ended
    function finalize() external override {}
}
