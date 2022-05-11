// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract SmartWeatherToken is ERC721URIStorage {

    uint256 public tokenCounter;
    string private tokenName = "Smart Weather";
    string private tokenSymbol = "SMRT-WTH";

    constructor () ERC721 (tokenName, tokenSymbol) { 
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }

}