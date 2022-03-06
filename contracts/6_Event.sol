// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Event {
    event log(address sender, string message);

    function transfer() public {

        emit log(msg.sender, "I Send 1 ETH to You");
        emit log(msg.sender, "I Send 2 ETH to You");
        emit log(msg.sender, "I Send 3 ETH to You");
    }
}