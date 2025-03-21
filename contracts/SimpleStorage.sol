// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

contract SimpleStorage {
    //boolean uint int address bytes

    // bytes32 data = "王";
    // bytes32 data1 = "abc";
    // uint8 num = -0;
    uint256 public  favoriteNumber;
    // uint256 public brotherNumber=3;
    

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public  peopleList;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function addPeople(string memory name,uint256 _favoriteNumber) public{
        peopleList.push(People(_favoriteNumber,name));
        nameToFavoriteNumber[name]=_favoriteNumber;
    }

    // function retrieve() public view returns (uint256) {

    //     return favoriteNumber;
    // }

    // function pure_test() public  pure returns (bool){
    //     return false;
    // }

}
