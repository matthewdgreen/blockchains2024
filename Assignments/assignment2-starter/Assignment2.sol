// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IDutchAuction {
    /**
     * @dev Returns the address of the auction seller.
     */
    function seller() external view returns (address);

    /**
     * @dev Bid on the auction with the value sent together with the call.
     */
    function bid() external payable;

    /**
     * @dev Returns the address of the winner of the auction.
     */
    function winner() external view returns (address);

    /**
     * @dev Returns the final price of the auction.
     */
    function finalPrice() external view returns (uint256);

    /**
     * @dev Finalize the auction and send the final price to the seller.
     */
    function finalize() external;

    /**
     * @dev Returns the price in current block.
     */
    function currentPrice() external view returns (uint256);
}

interface IEnglishAuction {
    /**
     * @dev Returns the address of the auction seller.
     */
    function seller() external view returns (address);

    /**
     * @dev Bid on the auction with the value sent together with the call.
     */
    function bid() external payable;

    /**
     * @dev Returns the address of the winner of the auction.
     */
    function winner() external view returns (address);

    /**
     * @dev Returns the final price of the auction.
     */
    function finalPrice() external view returns (uint256);

    /**
     * @dev Finalize the auction and send the final price to the seller.
     */
    function finalize() external;

    /**
     * @dev Returns the current highest bidder of the auction.
     */
    function highestBidder() external view returns (address);

    /**
     * @dev Returns the current highest bid value of the auction.
     */
    function highestBid() external view returns (uint256);

    /**
     * @dev Returns the minimum increment value of the auction.
     */
    function minIncrement() external view returns (uint256);
}

interface IVickreyAuction {
    /**
     * @dev Returns the address of the auction seller.
     */
    function seller() external view returns (address);

    /**
     * @dev Commit a bid with a hash of the bid value and a nonce.
     */
    function commitBid(bytes32 bidCommitment) external payable;

    /**
     * @dev Reveal the bid value and nonce of a previous bid.
     */
    function revealBid(bytes32 nonce) external payable;

    /**
     * @dev Returns the address of the highest bidder.
     */
    function makeCommitment(uint256 bidValue, bytes32 nonce) external pure returns (bytes32);

    /**
     * @dev Returns the address of the winner of the auction.
     */
    function winner() external view returns (address);

    /**
     * @dev Returns the final price of the auction.
     */
    function finalPrice() external view returns (uint256);

    /**
     * @dev Finalize the auction and send the final price to the seller.
     */
    function finalize() external;

    /**
     * @dev Returns the current highest bidder of the auction.
     */
    function highestBidder() external view returns (address);

    /**
     * @dev Returns the second highest bid value of the auction.
     */
    function secondHighestBid() external view returns (uint256);

    /**
     * @dev Returns the reserve price of the auction.
     */
    function reservePrice() external view returns (uint256);

    /**
     * @dev Returns the bid deposit value of the auction.
     */
    function bidDeposit() external view returns (uint256);
}
