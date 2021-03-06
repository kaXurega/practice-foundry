// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";
import { Contract } from "../src/Contract.sol";

contract ContractScript is Script {
  function setUp() public {}

  function run() public {
    vm.broadcast();
    new Contract();
  }
}
