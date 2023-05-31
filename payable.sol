// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract PayableContract {

    uint256 public eth1= 10 ^ 18;
    uint256 public eth2= 1e18;
    uint256 public eth3= 1 ether;
    uint256 public sec=1;
    uint256 public min1=1 minutes;
    uint256 public h1=1 hours;
    uint256 public m1=1 days;
    mapping (address => uint256) public balances;

    function getMoney() public payable {
        balances[msg.sender] += msg.value; // gumari nor veragri
    }

    function sendMoney(uint256 amount) public {
        payable(msg.sender).transfer(amount);
        balances[msg.sender] -= amount;
    }

     function getBalance() public view returns(uint256) {
        return address(this).balance;
    }

}   