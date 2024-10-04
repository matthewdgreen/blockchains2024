# Assignment 2: Dutch Auction

`Assignment2.sol` defines the interface, while the other files serve as starter code. As long as your contract implements the interface, your implementation will pass the autograder.

In Solidity, the compiler automatically generates accessors for public fields. Therefore, some functions defined in the interface can be implemented as public fields. If you prefer to implement them as functions, you may uncomment the next line and remove the public field declaration.

For invalid operations, please use a direct revert (e.g., `require(msg.value > initialPrice, "Insufficient funds")`). Avoid relying on `address(this).balance`, as `selfdestruct` can affect a contract's balance.

To maintain consistency, the Dutch Auction also includes a `finalize` function. Please do not transfer the bid value to the seller in the `bid` function.

## Submission

Please submit the following files: `DutchAuction.sol`, `EnglishAuction.sol`, `VickreyAuction.sol`, and any additional dependencies you may have.

Do not modify the interface in `Assignment2.sol`; you can add more functions to your implementation without altering the interface.
