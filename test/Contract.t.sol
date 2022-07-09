// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import { Contract } from "../src/Contract.sol";

contract ContractTest is Test, Contract {
  function setUp() public {}

  function testExample() public {
    assertTrue(true);
  }

  function testCount() public {
    assertEq(count, 0);
  }

  function testPlus(uint256 fuzzy) public {
    plus(fuzzy);
    assertEq(count, fuzzy);
  }
}