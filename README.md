# TKNToken Smart Contract

## Overview
This Solidity smart contract, named TKNToken, is an implementation of the ERC-20 token standard using the OpenZeppelin library. The contract provides functionalities for creating and managing a token named "Shark" with the symbol "SRK". It includes features such as minting new tokens, burning existing tokens, and transferring tokens between addresses.

## Contract Details
- *Name:* TKNToken
- *Symbol:* SRK
- *Decimals:* 18 (standard for most ERC-20 tokens)
- *Total Supply:* The total supply is set during deployment and can be obtained using the totalSupply() function.

## Functions

### mint
- *Description:* Mint new tokens and assign them to a specified account.
- *Parameters:*
  - address account: The account to which new tokens will be minted.
  - uint256 mintUnits: The number of tokens to mint.
- *Access:* Only the contract owner can call this function.

### burn
- *Description:* Burn a specified amount of tokens owned by the caller.
- *Parameters:*
  - uint256 burnUnits: The number of tokens to burn.
- *Access:* Any account that owns the tokens can burn them.

### transferTKN
- *Description:* Transfer tokens from the caller's account to a specified recipient.
- *Parameters:*
  - address recipient: The account to receive the transferred tokens.
  - uint256 transferUnits: The number of tokens to transfer.
- *Access:* Any account that owns the tokens can initiate a transfer.

## Deployment
The contract is deployed with an initial supply of tokens, and the deploying address becomes the owner of the contract.

## Usage
The TKNToken contract provides a simple and secure way to manage and transfer tokens on the Ethereum blockchain.

For more details on ERC-20 token standards and OpenZeppelin library, refer to the official documentation:

- [ERC-20 Token Standard](https://eips.ethereum.org/EIPS/eip-20)
- [OpenZeppelin Contracts - ERC-20](https://docs.openzeppelin.com/contracts/4.x/api/token/erc20)

## Author
Mahesh

maheshzabade24@gmail.com
## License
This smart contract is licensed under the MIT License.
