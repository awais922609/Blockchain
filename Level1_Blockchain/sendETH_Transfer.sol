// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SendETH{

    function send(address payable _payto) public payable {

        uint value = msg.value;

        _payto.transfer(value);

    }
}