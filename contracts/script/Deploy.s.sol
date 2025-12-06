// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../contracts/BaseToken.sol";

/// @notice Deploy tokenu do Base / Base Sepolia
contract Deploy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        BaseToken token = new BaseToken();

        vm.stopBroadcast();
    }
}
