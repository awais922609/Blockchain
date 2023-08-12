//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Mapping {

    mapping (address => mapping (uint => bool)) public Mymap;

    function get(address _addr , uint _i) public view returns (bool){

        return Mymap[_addr][_i];
    }

    function set(address _addr , uint _i) public {
        
        Mymap[_addr][_i] = true;

    }

    function remove (address _addr , uint _i ) public  {

        delete Mymap[_addr][_i];

    }
}
