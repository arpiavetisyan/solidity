// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;


contract AMDToken4 {
    mapping(address => mapping(address=> uint256)) balance;
    mapping(address => uint256) globcheck;
    
    function ownermint(address owner) public {
            globcheck[owner]+=1000000;
    }

    function funding(address to, uint256 amount) public {
        balance[msg.sender][to]=amount;
    }

    function checklist(address owner, address spender) public view returns(uint256) {
        return balance[owner][spender];
    }
    
    function transfer(address owner, address spender, uint256 amount) public {
        require(balance[owner][msg.sender]>=amount, "Insufficient balance");
        globcheck[owner] -= amount;
        globcheck[spender] += amount;
    }

}