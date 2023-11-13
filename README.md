TNToken - Ethereum ERC-20 Token Contract
Overview
TNToken is an Ethereum ERC-20 token contract that allows for the creation, minting, burning, and transfer of tokens. It is built on the OpenZeppelin library, leveraging the ERC20.sol contract for standard token functionality.

Features
Ownership Control: The contract includes an ownership model, where the owner (TNOwner) has special privileges, such as the ability to mint new tokens.

Minting and Burning: The contract provides functions to mint new tokens and burn existing ones. Minting is restricted to the contract owner to control the token supply, while burning can be initiated by any token holder.

Event Logging: Important events such as token minting and burning are logged using Ethereum events. This allows external systems to listen for these events and react accordingly.

Inheritance from ERC20: TNToken extends the ERC20 contract, inheriting standard token functionalities like transfer, balanceOf, and allowance.

Installation and Usage
To use TNToken, follow these steps:

Install Dependencies: Ensure you have the required dependencies, including the OpenZeppelin library.
bash
Copy code
npm install @openzeppelin/contracts
Deploy Contract: Deploy the TNToken contract to the Ethereum network of your choice.

Initialize Contract: When deploying the contract, provide the required parameters for name, code, decimals, and initial supply.

Interact with the Contract: Use the provided functions to mint, burn, and transfer tokens. Make sure to adhere to the ownership model for certain operations.

Contract Details
Name: TNToken
Symbol (Code): TNCode
Decimals: TNDecimals
Initial Supply: TNInitialSupply
Security Considerations
Only the owner (TNOwner) should have access to the onlyOwner functions, such as minting new tokens. Ensure the private key associated with TNOwner is secure.

Be cautious with token transfers and burning, as these operations may have financial implications for token holders.

Examples
Minting Tokens
solidity
Copy code
// Mint 100 tokens to address '0x123...'
TNToken.mint(0x123..., 100);
Burning Tokens
solidity

// Burn 50 tokens from the caller's address
TNToken.burn(50);
Transfer Tokens
solidity

// Transfer 25 tokens from the caller's address to '0x456...'
TNToken.transfer(0x456..., 25);
License
This contract is licensed under the MIT License. See the LICENSE file for details.
