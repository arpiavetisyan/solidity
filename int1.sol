// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Chow is ERC20, Ownable {
    constructor() ERC20("Chow", "CHW") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
    uint256 number;
    function vars(uint256 var1) public returns(uint256) {
        number=var1;
        return var1;
    }    
    function add(uint256 var2) public view returns(uint256) {
        return var2+number;
    }   
}