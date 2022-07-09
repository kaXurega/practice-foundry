// SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.13;

// import "../lib/forge-std/src/Test.sol";
// import { MyToken } from "../src/MyToken.sol";

// contract MyTokenTest is Test, MyToken {
//   MyToken myToken;

//   address owner;
//   address ZERO_ADDRESS = address(0);
//   address spender = address(1);
//   address user = address(2);

//   string public name = "My Token";
//   string public symbol = "MTKN";

//   uint256 public decimals = 18;
//   uint256 amount = 1000 * 1e18;
//   uint256 public initialSupply = 1000 * 1e18;

//   event Transfer(address indexed from, address indexed to, uint256 value);

//   function setUp() public {
//     myToken = new MyToken();
//     owner = address(this);
//   }

//   function testinitialState() public {
//     assertEq(myToken.name(), name);
//     assertEq(myToken.symbol(), symbol);
//     assertEq(myToken.totalSupply(), initialSupply);
//     assertEq(myToken.decimals(), decimals);
//   }

//   function testFailUnauthorizedMinter() public {
//     vm.prank(user);
//     myToken.mint(user, amount);
//   }

//   function testFailMintToZeroAddress() public {
//     vm.prank(owner);
//     myToken.mint(ZERO_ADDRESS, amount);
//   }

//   function testIncreseTotalSupply() public {
//     uint256 expectedSupply = initialSupply + amount;
//     vm.prank(owner);
//     myToken.mint(owner, amount);
//     assertEq(myToken.totalSupply(), expectedSupply);
//   }

//   function testIncreaseRecipientBalance() public {
//     vm.prank(owner);
//     myToken.mint(user, amount);
//     assertEq(myToken.balanceOf(user), amount);
//   }

//   function testEmitTransferEventForMint() public {
//     vm.expectEmit(true, true, false, true);
//     emit Transfer(ZERO_ADDRESS, user, amount);
//     myToken.mint(user, amount);
//   }
// }