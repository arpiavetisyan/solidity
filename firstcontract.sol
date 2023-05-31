// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;


contract FirstContract {
    uint256 public unit1;//0-max 
    int256 int1;// =-1000
    bytes aaac; //creates memory 
    uint256[] abcde; //dynamic push(add from last), pop(delete from last), length
    int256[100] fixArr; //fixed size array
    address[] addresarray;
    uint256[][] matrix;
    uint256[][][] tensor;

    mapping(address => uint256) public balances;
    mapping(address => mapping(address => uint256)) public abcde;

    string string1= "abcde";
    string string2 = unicode"jnfdsjnfk"
    function firstFunction() public {
            balances[adr1] = 1000;
            balance[adr1][adr2] = 1000;
            uint256 a = 1000;
            uint256 b = 2000;
            // a + b
            // a - b error
            // a * b
            // a / b
            uint160 ab;
            uint256 abc=uint256(ab);
            bool bool1 = true; // =1
            bool bool2 = false; // =0

            !bool1; //false
            !bool2; // true

            // 0 && 0 = 0
            // 0 && 1 = 0
            // 1 && 0 = 0
            // 1 && 1 = 1

            // 0 || 0 = 0
            // 0 || 1 = 1
            // 1 || 0 = 1
            // 1 || 1 = 1

            address addr1; //uint160 |
            address payable addr2;
            payable(adr1);

            bytes32 abcde;

    }
}