//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Mapping {
    
    enum Ship {
        shipping,
        shipped,
        pending,
        approved,
        concalled
    }

    Ship public  status;

    function set (Ship _status) public {

        status = _status;
     }

    function get() public view returns (Ship){

        return status;
    }

    function remove() public {

        status = Ship.concalled;
    }


}
