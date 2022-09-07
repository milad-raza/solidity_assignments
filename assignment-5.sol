// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment5{

    // Task 1
    function Search(uint[] memory arr, uint element) public pure returns(uint) {
        uint i;
        for(i=0; i < arr.length; i++){
            if(arr[i] == element){
                return 1;
            }
        }
        return 0;
    }

    // Task 2
    function Sum(uint[] memory arr) public pure returns(uint) {
        uint i;
        uint sum;
        for(i=0; i < arr.length; i++){
            sum +=arr[i];
        }
        return sum;
    }
}