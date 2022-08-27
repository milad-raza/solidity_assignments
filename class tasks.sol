// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment1{

    // Task 1

    function getStr() public pure returns(string memory){
        return ("Hello Solidity");
    }

    // Task 2

    uint stateVariable = 10;
    function getStateVariable() public view returns(uint) {
        return stateVariable;
    }

    function getLocalVariable() public pure returns(uint) {
        uint localVarialbe = 20;
        return localVarialbe;
    }

    // Task 3

    uint private privateVariable;

    function setPrivateVariable(uint a) public {
        privateVariable = a;
    }

    function getPrivateVariable() public view returns(uint) {
        return privateVariable;
    }

    // Task 4
    
    function evaluate(int a, int b) public pure returns(int) {
        return (a + b) - (a - b);
    }

    // Task 5
    
    function find(uint n) public pure returns(uint) {
        require(n > 0, "number should be greater than 0");
        return n % 3;
    }

    // Task 6

    function average(uint a, uint b, uint c) public  pure returns(uint) {
        require(a > 0, "a should be greater than 0");
        require(b > 0, "b should be greater than 0");
        require(c > 0, "c should be greater than 0");
        return ((a + b + c) / 3);
    }

    // Task 7

    function digiSum(uint n) public pure returns(uint){
        uint sum = 0;
        while(n > 0){
            uint a = n % 10;
            sum = sum + a;
            n = n / 10;
        }
        return sum;
    }

    // Task 8

    function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint){
        uint [100] memory arr;
        arr[1] = a;
        arr[2] = b;
        arr[3] = c;

        for(uint i = 4; i <= n; i++){
            arr[i] = arr[i - 1] + arr[i - 2] + arr[i - 3];
        }
        return arr[n];
    }

    // Task 9

    function isPrimeNumber(uint n) public pure returns(string memory){
        if(n <= 1){
            return ("0 is not prime number");
        }
        for(uint i = 2; i < n; i ++){
            if(n % i == 0){
                return "not prime number";
            }
        }
        return "prime number";
    }
}