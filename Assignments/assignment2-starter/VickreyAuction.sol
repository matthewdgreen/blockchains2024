// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Assignment2.sol";

contract VickreyAuction is IVickreyAuction {
    uint256 public reservePrice;
    uint256 public bidDeposit;
    address public seller;

    address public winner;
    // function winner() public view returns (address) {}
    uint256 public finalPrice;
    // function finalPrice() public view returns (uint256) {}

    address public highestBidder;
    // function highestBidder() public view returns (address) {}
    uint256 public secondHighestBid;
    // function secondHighestBid() public view returns (uint256) {}

    // Note: Contract creator should be the seller
    constructor(
        uint256 _reservePrice,
        uint256 _bidDeposit,
        uint256 _biddingPeriod,
        uint256 _revealPeriod
    ) {}

    // Can use mapping to store the commitment for each bidder
    mapping(address => bytes32) private bidCommitments;

    // Record the player's bid commitment
    // Make sure at least bidDepositAmount is provided (for new bids)
    // Bidders can update their previous bid for free if desired.
    // Only allow commitments before biddingDeadline
    function commitBid(bytes32 bidCommitment) external payable override {}

    // Check that the bid (msg.value) matches the commitment
    // If the bid is below the minimum price, it is ignored but the deposit is returned.
    // If the bid is below the current highest known bid, the bid value and deposit are returned.
    // If the bid is the new highest known bid, the deposit is returned and the previous high bidder's bid is returned.
    function revealBid(bytes32 nonce) external payable override {}

    // This function shows how to make a commitment
    function makeCommitment(
        uint256 bidValue,
        bytes32 nonce
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(bidValue, nonce));
    }

    // Anyone can finalize the auction after the reveal period has ended
    function finalize() external override {}
}
