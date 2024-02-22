// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ExampleSimpleStorage {
    uint256 public number;

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}