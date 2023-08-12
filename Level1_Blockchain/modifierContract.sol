//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


    contract Modifier{

        address public owner;

        constructor(){
           owner = msg.sender;
        }


        modifier onlyOwner() {
                require(msg.sender == owner , "you are not owner");
                _;
        }

        function setOwner(address _newOwner) public  onlyOwner{

                owner = _newOwner;
        }

    }



