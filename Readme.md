# Solidity Error Handling Contracts

# Description

This repository contains a set of Solidity smart contracts that showcase different error handling mechanisms in Ethereum smart contract development. These contracts demonstrate the use of require, revert, and assert statements to handle conditions and errors effectively.

## Getting Started

Visit the Remix website at https://remix.ethereum.org/ to access the IDE.

Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol).

Copy and paste the provided Solidity code into the file.

```javascript
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
```
To compile the code, go to the "Solidity Compiler" tab in the sidebar. Ensure that the "Compiler" option is set to a version 0.8.10 and click the "Compile" button.

Switch to the "Deploy & Run Transactions" tab. Choose the desired Ethereum Virtual Machine (EVM) environment, such as Remix VM (Shanghai).

Click on the require contract you want to deploy (Require, Revert and Assert) by clicking the "Deploy" button. Once deployed, you can interact with the contract using the available functions, such as mint and burn.

View the contract's details, including public variables like tokenName, tokenAbbrv, and totalSupply, by accessing their respective getter functions in the "Deployed Contracts" section.

## Contract Details
There are three error handling statements require, revert and assert

### Require Contract
Require statement main function is input validation and access control.
The Require contract showcases the usage of the require statement for input validation and enforcing specific conditions. It includes two functions:

check_owner(): Verifies if the caller of the function is the owner and increments the age state variable by 2.
check_stateVariable(uint x): Increments the age state variable by 10 and checks if the input x is greater than 5. If not, it reverts the transaction with a custom error message.

### Revert Contract
Revert statement is a custom error handling function. You can display any datavariable type of error.
The Revert contract illustrates the utilization of the revert statement along with a custom error message. This contract has one function:

check_stateVariable(uint x): Increments the age state variable by 10 and checks if the input x is less than 5. If the condition is met, it reverts the transaction with a detailed error message using the error mechanism.

### Assert Contract
Assert statement checks the bug in the code and the security of the code.
The Assert contract demonstrates the assert statement for checking conditions that should never occur in the contract. It includes a single function:

check_owner(): Uses the assert statement to ensure that the caller of the function is the owner of the contract.


## Contributing:
Contributions to this project are welcome. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## Authors:
Ashutosh Mittal



