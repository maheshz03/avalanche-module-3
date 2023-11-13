# TNToken - ERC20 Token Smart Contract

This Solidity smart contract implements the ERC20 token standard and introduces additional functionality to facilitate minting, burning, ownership control, and seamless token transfers. The contract is designed to be easily deployable and customizable for various tokenization needs.

## Features

1. **ERC20 Standard Compliance:** TNToken adheres to the ERC20 standard, providing basic token functionalities such as transfer, balance inquiry, and approval for delegated transfers.

2. **Minting and Burning:** The contract allows the owner to mint new tokens and burn existing ones. Minting creates new tokens and adds them to the specified address, while burning removes tokens from the caller's balance.

3. **Ownership Control:** The contract includes a modifier `onlyOwner` that restricts certain functions to be callable only by the contract owner. This enhances security and control over critical operations.

4. **Seamless Token Transfers:** Utilize the standard ERC20 `transfer` function to easily transfer tokens between addresses.

## Getting Started

### Deployment

1. Deploy the TNToken contract, specifying the token's name, code, decimals, and initial supply.
2. The contract owner will be set to the deployer's address.

### Usage

1. **Mint Tokens:** Call the `mint` function to create new tokens and assign them to a specified address.

```solidity
function mint(address to, uint256 units) public onlyOwner {
    require(units > 0, "Amount must be greater than 0.");
    _mint(to, units);
    emit TokensMinted(to, units);
}
```

2. **Burn Tokens:** Use the `burn` function to remove tokens from the caller's balance.

```solidity
function burn(uint256 units) public {
    _burn(caller(), units);
    emit TokensBurned(caller(), units);
}
```

3. **Transfer Tokens:** Use the standard ERC20 `transfer` function to transfer tokens between addresses.

```solidity
function transfer(address to, uint256 units) public override returns (bool) {
    _transfer(caller(), to, units);
    emit Transfer(caller(), to, units);
    return true;
}
```


## License

This smart contract is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

