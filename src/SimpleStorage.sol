// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleStorage {
  uint storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint retVal) {
    return storedData;
  }
}