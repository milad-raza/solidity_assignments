// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment1{

    // Task 1
    string str = "Hello Solidity";

    function getStr() public view returns(string memory){
        return str;
    }

    // Task 2
    uint stateVariable = 10;

    function getStateVariable() public view returns(uint){
        return stateVariable;
    }

    function getLocalVariable() public pure returns(uint){
        uint localVarialbe = 20;
        return localVarialbe;
    }
}