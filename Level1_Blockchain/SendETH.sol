// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SendETH{

    function send(address payable _payto) public payable {

        uint amount = msg.value;

        bool sent = _payto.send(amount);

        require(sent == true , "Failed to sent Transaction");
    }
}