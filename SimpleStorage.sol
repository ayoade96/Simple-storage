// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
     
     uint public favoriteNumber;

     mapping(string => uint) public nameToFavoriteNumber;

     struct People {
         uint favoriteNumber;
         string name;
     }

     People[] public people;

     function store(uint _favoriteNumber) public {
         favoriteNumber = _favoriteNumber;
     }

     function retrieve() public view returns (uint) {
         return favoriteNumber;
     }

     function addPerson(uint _favoriteNumber, string memory _name) public {
         people.push(People(_favoriteNumber, _name));
         nameToFavoriteNumber[_name] = _favoriteNumber;
     }
}
