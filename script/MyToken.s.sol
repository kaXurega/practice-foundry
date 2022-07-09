// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import { MyToken } from "../src/MyToken.sol";

contract MyTokenScript is Script {
  function run() external {
    vm.startBroadcast();
    MyToken myToken = new MyToken();
  }
}