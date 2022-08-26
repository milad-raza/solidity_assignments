// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment3{

    // Task 1
    function digiSum(uint n) public pure returns(uint){
        uint a;
        uint allSum = 0;
        while(n > 0){
            a = n % 10;
            allSum = allSum + a;
            n = n / 10;
        }
        return allSum;
    }
    
    // Task 2
    function nthTerm(uint n, uint a, uint b, uint c) public pure returns(uint){
        uint[100] memory arr;
        uint i;
        arr[1] = a;
        arr[2] = b;
        arr[3] = c;
        for (i = 4; i <= n; i++) {
            arr[i] = arr[i - 1] + arr[i - 2] + arr[i - 3];
        }
        return arr[n];
    }
}