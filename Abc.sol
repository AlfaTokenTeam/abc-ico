pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Abc is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Abc(address _owner)  UpgradeableToken(_owner) {
    name = "Abc";
    symbol = "a";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}