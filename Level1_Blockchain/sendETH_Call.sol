// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SendETH{

    function send(address payable _payto) public payable {

        (bool success , bytes memory data) = _payto.call{value: msg.value}("");

        require(success == true , "Failed to sent Transaction");
    }
}