// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Require{
address public owner;
uint public age=20;

constructor (){
    owner=msg.sender;
}

function check_owner() public{
require(owner==msg.sender,"You are not the owner");
age=age+2;
}

function check_stateVariable(uint x) public {
    age=age+10;
    require(x>5,"Require: X is less than 5");
}
}

/////////////////////////////////////////////////////////


contract Revert{
uint public age=20;

error throwError(string);


function check_stateVariable(uint x) public {
    age=age+10;
    if(x<5){
        revert throwError("Revert2: X is less than 5");
    }
}  
}

/////////////////////////////////////////////////////////


contract Assert{
    address public owner;
    
    constructor(){
        owner=msg.sender;
    }

    function check_owner() public view{
           assert(owner==msg.sender);
} 
}
