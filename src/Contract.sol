// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Contract {
  uint256 public count = 0;

  function plus(uint256 amount) public {
    count += amount;
  }
}