// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TKNToken is ERC20 {
    address public owner;

    event TokenTransfer(address indexed from, address indexed to, uint256 units);

    modifier onlyOwner() {
        require(msg.sender == owner || address(this) == owner, "Only the owner can Mint tokens.");
        _;
    }

    constructor(uint256 initialSupply) ERC20("Shark", "SRK") {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;
    }

    function mint(address account, uint256 mintUnits) public onlyOwner {
        require(account != address(0), "Invalid address");
        _mint(account, mintUnits);
        emit TokenTransfer(address(0), account, mintUnits);
    }

    function burn (uint256 burnUnits) public {
        require(balanceOf(msg.sender) >= burnUnits, "Insufficient TKN funds");
        _burn(msg.sender, burnUnits);
        emit TokenTransfer(msg.sender, address(0), burnUnits);
    }

    function transferTKN(address recipient, uint256 transferUnits) public returns (bool) {
        require(recipient != address(0), "Invalid recipient");
        _transfer(msg.sender, recipient, transferUnits);
        emit TokenTransfer(msg.sender, recipient, transferUnits);
        return true;
    }
}

