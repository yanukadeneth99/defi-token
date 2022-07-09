// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing ERC20 from Openzep
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SRToken is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol) 
        ERC20(_name,_symbol) {
            // Mint 1000 tokens
            _mint(msg.sender, 1000 * decimals());
    }

    // Mint more tokens (Public)
    function mintmore(uint256 amount) public payable {
        _mint(msg.sender, amount * decimals());
    }

    // Mint tokens for account (OnlyOwner)
    function mintTo(address to, uint256 tokens) public payable onlyOwner {
        _mint(to, tokens * decimals());
    }
}

//Deployed-contract-address : 0x627f152f97d431B844604B4421313CA979712006
