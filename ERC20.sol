// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TNToken is ERC20 {
    address public TNOwner;

    event TokensMinted(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);
    
    modifier onlyOwner() {
        require(caller() == TNOwner, "Only the contract owner can call this function.");
        _;
    }

    constructor(
        string memory TNName,
        string memory TNCode,
        uint8 TNDecimals,
        uint256 TNInitialSupply
    ) ERC20(TNName, TNCode) {
        TNOwner = caller();
        _mint(caller(), TNInitialSupply * (10**TNDecimals));
    }

    function mint(address to, uint256 units) public onlyOwner {
        require(units > 0, "Amount must be greater than 0.");
        _mint(to, units);
        emit TokensMinted(to, units);
    }

    function burn(uint256 units) public {
        _burn(caller(), units);
        emit TokensBurned(caller(), units);
    }

    function transfer(address to, uint256 units) public override returns (bool) {
        _transfer(caller(), to, units);
        emit Transfer(caller(), to, units);
        return true;
    }

    function caller() internal view returns (address) {
        return msg.sender;
    }
}


