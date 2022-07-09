// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import { Box } from "../src/Box.sol";

contract BoxTest is Test, Box {
  uint256 public _value;
  function setUp() public {}

  function testStore(uint256 fuzzy) public returns (uint256){
    _value = fuzzy;
    assertEq(_value, fuzzy);
    return _value;
  }

  function testRetrieve() public {
    uint256 updateValue = testStore(_value);
    assertEq(_value, updateValue);
  }
}