// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract MyERC20 is ERC20Upgradeable {
    /*
    Add fields
    DistributionMap: map from receiver address to percentage

    Add functions
    distribute(): 
    - get balanceOf current (sender) account
    - calculate how much tokens each receiver get
    - call decimal to resolve demical issues? Create a new map from receiver to amount
    - for each kvp in the new map, call transfer(receiver, amount)
    */
    function initialize() initializer public {
        __ERC20_init("MyToken", "MTK");
    }
} 
