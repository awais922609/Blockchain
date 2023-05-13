// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{
    uint256 favouriteNumber = 5 ;

    function store (uint256 _favouriteNumber) public   {
        favouriteNumber = _favouriteNumber;
    }

    
    struct People{
        uint256 favouriteNumber;
        string name;
    }

    People[] public  people ;
    People public Person = People({favouriteNumber: 1 , name: "Patrick"});

    function addPerson(string memory _name , uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber , name: _name}));
    }
    
    function retrieve() public  view returns (uint256){
        return favouriteNumber;
    }

}