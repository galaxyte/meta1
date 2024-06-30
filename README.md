# Error Handling Solidity Smart Contract

## Overview

Welcome to the Error Handling Solidity smart contract! This contract implements a basic ERC-20-like token on the Ethereum blockchain. It includes functionalities for assert() , require() , revert().

This document will guide you through the key aspects of the Error smart contract, explaining its purpose and providing instructions on how to interact with it.

## Features
- **require**: Used to validate conditions such as ensuring a deposit amount is greater than zero, the sender has enough balance for a withdrawal or transfer, and valid addresses.
- **assert**: Used to check for internal errors and conditions that should always be true. Here, it's used to ensure the contract has enough balance to cover a withdrawal.
- **revert**: Used in the forceFail function to explicitly revert the transaction with a custom error message. This is a way to deliberately cause the transaction to fail under certain conditions.


## Getting Started

### Prerequisites

To interact with this contract, you will need:

- [Solidity](https://docs.soliditylang.org/) version 0.8.18 or compatible.
- A development environment like [Remix](https://remix.ethereum.org/) or [Truffle](https://www.trufflesuite.com/truffle).
- An Ethereum client or test network for deployment (e.g., [Ganache](https://www.trufflesuite.com/ganache)).

### Deployment

To deploy the MyToken contract:

1. Open your development environment (e.g., Remix).
2. Copy the MyToken contract code into a new file named `MyToken.sol`.
3. Compile the contract using the Solidity compiler version 0.8.18.
4. Deploy the contract, specifying the initial token name, symbol, and supply in the constructor.

Example constructor parameters:
- *name*: "Error"
- *initialSupply*: 1000

## Usage

After deploying the contract, interact with it as follows:

- **Error handling**: Incr
