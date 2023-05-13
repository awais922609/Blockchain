// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./SimpleStorageAdvance.sol"; 

// if you want to use functions and variables of SimpleStorage use Inheritance(oop concept)

// use: contract StorageFactory is SimpleStorage ( Inheritance )
contract StorageFactory {
    
    SimpleStorage[] simpleStorageArr;
    function createSimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArr.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public{
        SimpleStorage simpleStorage =  SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArr[_simpleStorageIndex]));
        return simpleStorage.retrieve();


    }
}