// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Assignment4{

    // Task 1
    function power(uint x, uint y) public pure returns(uint) {
        uint result = 1;
        while(y != 0){
            result *= x;
            y--;
        }
        return result;
    }

    // Task 2
        function palindrome(uint n) public pure returns (uint) {
        uint reversed = 0;
        uint remainder;
        uint original;

        original = n;
        while (n != 0) {
            remainder = n % 10;
            reversed = reversed * 10 + remainder;
            n /= 10;
        }
        if (original == reversed) {
            return 1;
        } else {
            return 0;
        }
    }


    // Task 3
    function Reverse(uint n) public pure returns(uint){
        uint reversed = 0;
        uint sum;

        while (n > 0) {
            sum = n % 10;
            reversed = reversed * 10 + sum;
            n /= 10;
        }
        return reversed;
    }

    // Task 4
    function reverseArray(uint[] memory arr)
        public
        pure
        returns (uint[] memory)
    {
        uint temp;
        uint len = arr.length;
        for (uint i = 0; i < len / 2; i++) {
            temp = arr[i];
            arr[i] = arr[len - i - 1];
            arr[len - i - 1] = temp;
        }
        return arr;
    }
    
    // Task 5
    function even(uint[] memory arr)public pure returns(uint[] memory) {
        for(uint i = 0; i < arr.length; i++){
            arr[i] = 2 * arr[i];
        }
        return arr;
    }

    // Task 6
    function sort(uint[] memory arr)public pure returns (uint[] memory) {
        for(uint j=0;j<3;j++){
        for(uint i = 0; i < arr.length; i++){
            if(i == arr.length-1){

            }else{
            if(arr[i] > arr[i + 1]){
                uint swap = arr[i];
                uint swap1 = arr[i + 1];
                arr[i] = swap1;
                arr[i + 1] = swap;
            }
        }
    }}
        return arr;
    }
}