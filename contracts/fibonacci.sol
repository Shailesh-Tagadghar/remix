//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fibonacci {
    function fib(uint256 a) public pure returns (uint256) {
        uint256 n1 = 0;
        uint256 n2 = 1;
        uint256 n3;
        for (uint256 i = 3; i <= a; i++) {
            n3 = n1 + n2;
            n1 = n2;
            n2 = n3;
        }
        return n3;
    }
}