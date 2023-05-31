// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract Contract {
    address public owner;
    address private admin; //its visible for others but not changeable
    uint256 public constant ownerBalance=10000; // can be declared and initialized at the same time
    uint256 public immutable adminBalance; // can be declared and not initialized at the same time, after giving value it will be constant
    uint256 public someValue;
    uint256[10] public array;

    constructor(address _owner, address _admin) {
        owner = _owner;
        admin = _admin;
        adminBalance=1258;
    } //constructor works first, before deploying we have to give two addresses

    function firstFunstion(uint256 param, string memory str2) public {
        uint256[] memory arr1 = new uint256[](10);
        string memory str1="adced";
        uint256 a=10000;
        someValue=param;
    }

    function getadmin() public view returns(address) {
        return admin;
    }

    function add2(uint256 a, uint256 b) public pure returns(uint256) {
       return a+b;
    }

}