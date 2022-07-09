// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import { SimpleStorage } from "../src/SimpleStorage.sol";

// interface Vm {
//   function warp(uint256) external;
// }

contract SimpleStorageTest is DSTest {
  SimpleStorage simplestorage;
  // Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);

  function setUp() public {
    simplestorage = new SimpleStorage();
  }

  function testGetInitialValue() public {
    assertTrue(simplestorage.get() == 0);
  }

  function testSetValue() public {
    uint x = 300;
    simplestorage.set(x);
    assertTrue(simplestorage.get() == 300);
  }

  // function testWarp() public {
  //   assertEq(block.timestamp, 0);
  //   vm.warp(100);
  //   assertEq(block.timestamp, 100);
  // }
}