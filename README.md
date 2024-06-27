
# ExampleContract

This is a simple Solidity smart contract named `ExampleContract`. The contract includes basic functionalities such as setting a value, depositing an additional value, doubling the value, and withdrawing a specified amount. It demonstrates the use of `require()`, `assert()`, and `revert()` statements for input validation and error handling.

## Contract Overview

The contract consists of the following key elements:

- **Owner**: The address of the contract owner.
- **Value**: A uint256 variable to store a numeric value.

## Functions

### 1. `constructor()`

Initializes the contract and sets the owner to the address that deploys the contract.

### 2. `setValue(uint256 newValue)`

Sets a new value for the `value` variable.
- **Input**: `newValue` (must be greater than zero).
- **Validation**: Uses `require()` to ensure the `newValue` is greater than zero.

```solidity
function setValue(uint256 newValue) public {
    require(newValue > 0, "Value must be greater than zero");
    value = newValue;
}
```

### 3. `deposit(uint256 addValue)`

Adds an additional value to the existing `value`.
- **Input**: `addValue` (must be greater than zero).
- **Validation**: Uses `require()` to ensure the `addValue` is greater than zero.

```solidity
function deposit(uint256 addValue) public {
    require(addValue > 0, "Value must be greater than zero");
    value += addValue;
}
```

### 4. `doubleValue() public view returns (uint256)`

Returns the double of the current value.
- **Validation**: Uses `assert()` to ensure that the doubled value is greater than zero.

```solidity
function doubleValue() public view returns (uint256) {
    uint256 doubledValue = value * 2;
    assert(doubledValue > 0);
    return doubledValue;
}
```

### 5. `withdraw(uint256 amount)`

Withdraws a specified amount from the contract's balance.
- **Input**: `amount` (must be less than or equal to the current value).
- **Validation**: Uses `revert()` to ensure that the contract has enough balance for the withdrawal.

```solidity
function withdraw(uint256 amount) public {
    if (value < amount) {
        revert("Insufficient balance in the contract");
    }
    value -= amount;
}
```



# ExampleContract

This is a simple Solidity smart contract named `ExampleContract`. The contract includes basic functionalities such as setting a value, depositing an additional value, doubling the value, and withdrawing a specified amount. It demonstrates the use of `require()`, `assert()`, and `revert()` statements for input validation and error handling.

## Contract Overview

The contract consists of the following key elements:

- **Owner**: The address of the contract owner.
- **Value**: A uint256 variable to store a numeric value.

## Functions

### 1. `constructor()`

Initializes the contract and sets the owner to the address that deploys the contract.

### 2. `setValue(uint256 newValue)`

Sets a new value for the `value` variable.
- **Input**: `newValue` (must be greater than zero).
- **Validation**: Uses `require()` to ensure the `newValue` is greater than zero.

```solidity
function setValue(uint256 newValue) public {
    require(newValue > 0, "Value must be greater than zero");
    value = newValue;
}
```

### 3. `deposit(uint256 addValue)`

Adds an additional value to the existing `value`.
- **Input**: `addValue` (must be greater than zero).
- **Validation**: Uses `require()` to ensure the `addValue` is greater than zero.

```solidity
function deposit(uint256 addValue) public {
    require(addValue > 0, "Value must be greater than zero");
    value += addValue;
}
```

### 4. `doubleValue() public view returns (uint256)`

Returns the double of the current value.
- **Validation**: Uses `assert()` to ensure that the doubled value is greater than zero.

```solidity
function doubleValue() public view returns (uint256) {
    uint256 doubledValue = value * 2;
    assert(doubledValue > 0);
    return doubledValue;
}
```

### 5. `withdraw(uint256 amount)`

Withdraws a specified amount from the contract's balance.
- **Input**: `amount` (must be less than or equal to the current value).
- **Validation**: Uses `revert()` to ensure that the contract has enough balance for the withdrawal.

```solidity
function withdraw(uint256 amount) public {
    if (value < amount) {
        revert("Insufficient balance in the contract");
    }
    value -= amount;
}
```



## Authors

- [@Karan Kumar](https://github.com/VisionaryVenture)

