// import solidity

pragma solidity ^0.4.0;

contract Inheritance{
    address owner;
    bool deceased;
    uint money;

    constructor() public payable{
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }

    modifier oneOwner{
        require (msg.sender == owner);
        _;
    }
    modifier isDeceased{
        require(deceased == true);
        _;
    }


    address[] wallets;

    mapping (address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public oneOwner{
        wallets.push(_wallet);
        inheritance[_wallet] = inheritance;
    }

    function moneyPaid() private isDeceased{
        for (uint i=0; 1 <wallets.length; i++){
            wallets[i].transfer(inheritance[wallets[i]]);
        }
    }

    function died() public onOwner{
        deceased = true;
        moneyPaid();
    }
}