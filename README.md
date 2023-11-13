## TNToken - Ethereum ERC-20 Token Contract

## Overview

TNToken is an Ethereum ERC-20 token contract that allows for the creation, minting, burning, and transfer of tokens. It is built on the OpenZeppelin library, leveraging the ERC20.sol contract for standard token functionality.


## Inheritance from ERC20: 

TNToken extends the ERC20 contract, inheriting standard token functionalities like transfer,balanceOf, and allowance.

## Features

Ownership Control: The contract includes an ownership model, where the owner (TNOwner) has special privileges, such as the ability to mint new tokens.

## contract details 

Name: TNToken

Symbol (Code): TNCode

Decimals: TNDecimals

Initial Supply: TNInitialSupply




## Minting Tokens

Minting involves the creation of new tokens. The mint function allows the contract owner to generate additional tokens and allocate them to a specified address. In the example below, 100 tokens are minted and assigned to the address '0x123...':

```
TNToken.mint(0x123..., 100);
```
## Burning Tokens

Burning tokens is the process of permanently removing them from circulation. The burn function enables any token holder to reduce their balance by a specified amount. In this example, 50 tokens are burned from the caller's address:

```
TNToken.burn(50);
Transferring Tokens
```
## transfer tokens

Transferring tokens allows the movement of tokens between addresses. The standard transfer function is overridden in TNToken to include an event log. The example below illustrates transferring 25 tokens from the caller's address to '0x456...':

## Event Logging: 

Important events such as token minting and burning are logged using Ethereum events. This allows external systems to listen for these events and react accordinglallowance.


## Security Considerations

Only the owner (TNOwner) should have access to the onlyOwner functions, such as minting new tokens. Ensure the private key associated with TNOwner is secure.

Be cautious with token transfers and burning, as these operations may have financial implications for token holders.
