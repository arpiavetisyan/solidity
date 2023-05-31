// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";

// contract AMDToken is ERC20, Ownable {
//     constructor() ERC20("AMDToken", "CGT") {}

//     function mint(address to, uint256 amount) public {
//         _mint(to, amount);
//     }
// }


contract AMDToken3 {
    mapping(address => uint256) balances;
    mapping(address => mapping(address=> uint256)) allowances;
    address public _owner;
    // uint256 public Burnvalue;

    constructor() {
        _owner=msg.sender;
    }

    modifier OnlyOwner() {
        require(msg.sender==_owner,"");
        _;
    }

    // modifier BurnValue() {
    //     require(BurnValue===2000);
    //     _;
    // }

    function ownermint(address owner, uint256 amount) public {
            balances[owner]+=amount;
    }

    function checkbalances(address from) public view returns(uint256){
            return balances[from];
    }
   
    function transfer(address to, uint256 amount) public {
        
        require(balances[msg.sender]>=amount, "error");
        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }    

    function funding(address to, uint256 amount) public {
        allowances[msg.sender][to]+=amount;
    }

    function checklist(address giver, address spender) public view returns(uint256) {
        return allowances[giver][spender];
    }
    
    function spending(address giver, address spender, uint256 amount) public {
        require(allowances[giver][msg.sender]>=amount , "No allowance");
        require(balances[giver]>=amount, "Insufficient balance");
        balances[giver] -= amount;
        balances[spender] += amount;
        allowances[giver][msg.sender]-=amount;
    }

    function burning(address burned, uint256 amount) public OnlyOwner {
        require(balances[burned] >= amount, "error");
        balances[burned] -= amount;
        balances[address(0)] += amount;
    }
}


