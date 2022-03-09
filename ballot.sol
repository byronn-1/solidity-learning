pragma solidity ^0.4.0;

//availiable import statments
/* import "filename";
import * as symbolname from "filename";
import {symbol1 as alias, symbol2} from "filename"; */

contract SimpleContract{

    //state variable
    uint storedData;

    //modifier- conditions before we run the function
    modifier onlyData(){
        require(
            storedData >= 0
        );_;
    }

    function set(uint x) public{
        storedData = x;
    }

    //event 
    event Sent(address from, address to, unit storedData)
}

//Types in Solidity


//string 
string name = "manny";

//integers
uint storedData = 34;

//boolean
bool atrueorfalsevalue = false;

//address
address vwalletAddress = 0x72bad22743a;

//arrays
string[] names;

//bytes
bytes32 code;

//Struct to define
struct User{
    string firstName;
    string lastName;
}

//enum
enum userTtype { buyer, selller}

//mapping
mapping(addrreess => uint) public balances;

//Variable names that are restricted
// ether sazbo finney wei
// you can use these in code but you cant set them

contract RestrictedVarNames{
    bool isEqual = (1 ether == 5000 finney);
}

// other restrictions that are predefined are time restrictions
// seconds, minutes, hours, days, weeks, (years has been deprecated)
// remember that time varibles are plural even if they are in singular units

// special functions that you can be use dfor transactions
contract BlockProperty{
    block.number;
    block.difficulty;
    block.coinbase();

//message
    msg.sender;
    msg.value;
    msg.data;
//transaction
    tx.origin;
}


//functions can return multiple outputs.

contract Basic{
    function(uint _a, uint _b) public pure
    returns (uint o_sum, uint o_product)
    {
        o_sum = _a + _b;
        o_product = _a * _b;
    }
}


// Arithmetic operators + - * / % **
// logical ! && || == != 
bool hasMoney = !false;
//Bitwise operators & ! ^ ~ >> <<
bytes1 contractValue = 0x02 | 0x01;

//solidarity has all the same coditional staments as other lanuages apart from switch statments

contract SampleConditional{

    if( a == 2){

    }else{

    }

    //check condtion first
    while(a >= 0){
        //execute if condition met
    }

    // do this until condition no longer true
    //always runs once
    do{
        
    }while(a >= 0)

    //standard for loop
    for(uint i =0; i >= 50; i++){

    }

}
