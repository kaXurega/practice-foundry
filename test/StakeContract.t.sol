// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "forge-std/Test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";
import "./utils/Cheats.sol";

contract StakeContractTest is DSTest {
  Cheats internal constant cheats = Cheats(HEVM_ADDRESS);
  StakeContract public stakeContract;
  MockERC20 public mockToken;

  function setUp() public {
    stakeContract = new StakeContract();
    mockToken = new MockERC20();
  }

  function testExample(uint8 amount) public {
    mockToken.approve(address(stakeContract), amount);
    cheats.roll(55);
    bool stakePassed = stakeContract.stake(amount, address(mockToken));
    assertTrue(stakePassed);
  }
}
