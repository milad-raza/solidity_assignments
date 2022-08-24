// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment2{

    // Task 1
    uint private privateNumber = 10;

    function setPrivateNumber(uint number) public{
        privateNumber = number;
    }

    function getPrivateNumber() public view returns(uint){
        return privateNumber;
    }
    
    // Task 2

    function evaluate(uint a, uint b) public pure returns(uint){
        return (a + b) - (a - b);
    }

    // Task 3

    function find(uint a) public pure returns(uint, string memory){
        if(a > 0){
            return (a % 3, "is the remainder");
        }
        else{
            return (a, "number should not be less then 0");
        }
    }
  
    // Task 4

    function average(uint a, uint b, uint c) public pure returns(uint){
        require(a > 0, "First value must be greater than 0"); 
        require(b > 0, "Second value must be greater than 0"); 
        require(c > 0, "Third value must be greater than 0"); 
        return (a + b + c ) / 3;
    }
}