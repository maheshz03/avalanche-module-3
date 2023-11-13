## TNToken - Ethereum ERC-20 Token Contract

## Overview

TNToken is an Ethereum ERC-20 token contract that allows for the creation, minting, burning, and transfer of tokens. It is built on the OpenZeppelin library, leveraging the ERC20.sol contract for standard token functionality.

## Features

Ownership Control: The contract includes an ownership model, where the owner (TNOwner) has special privileges, such as the ability to mint new tokens.

## Minting and Burning:

 The contract provides functions to mint new tokens and burn existing ones. Minting is restricted to the contract owner to control the token supply, while burning can be initiated by any token holder.

## Event Logging: 

Important events such as token minting and burning are logged using Ethereum events. This allows external systems to listen for these events and react accordingly.

## Inheritance from ERC20: TNToken extends the ERC20 contract, inheriting standard token functionalities like transfer, balanceOf, and allowance.

## contract details 

Name: TNToken

Symbol (Code): TNCode

Decimals: TNDecimals

Initial Supply: TNInitialSupply

## Security Considerations

Only the owner (TNOwner) should have access to the onlyOwner functions, such as minting new tokens. Ensure the private key associated with TNOwner is secure.

Be cautious with token transfers and burning, as these operations may have financial implications for token holders.
