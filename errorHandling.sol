// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public value;
    // uint256 public addValue;

//require, assert, and revert

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 newValue) public {
        
        require(newValue > 0, "Value must be greater than zero");
        value = newValue;
    }

     function deposit(uint256 addValue) public {
        
        require(addValue > 0, "Value must be greater than zero");
        value += addValue;
    }

    

    function doubleValue() public view returns (uint256) {
        uint256 doubledValue = value * 2;
        //assert
        // this should always be true unless value is zero
        assert(doubledValue > 0);
        return doubledValue;
    }

    function withdraw(uint256 amount) public {
        // Ensure the contract has enough balance to withdraw
        if (value<amount) { //can also be done using require keyword
            revert("Insufficient balance in the contract");
        }
        value -= amount;
    }
}
