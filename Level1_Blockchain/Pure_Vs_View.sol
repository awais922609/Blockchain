//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract ViewAndPure{

    uint public x = 10;

    function addToX (uint y) public view returns(uint){
        return x+y;
    }

    function addToY (uint y , uint z) public pure returns (uint ){
        // y = x+z; uncomment to see error due to pure function
        return y+z;

    }

}


