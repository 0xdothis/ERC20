// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

// Uncomment this line to use console.log

// import "hardhat/console.sol";

contract ERC20 {
  string  _name;
  string  _symbol;
  uint8 _decimal;
  uint256 _totalSupply;
  
  mapping(address => uint256) balance;
  mapping(address => mapping(address => uint256)) _allowance;

  // EVENTS
  event Tranfer(address indexed _from, address indexed _to, uint256 value);
  event Approval(address indexed _owner, address indexed _spender, uint256 value);



  constructor(string memory name_, string memory symbol_) {
    _name = name_;
    _symbol = symbol_;

    
  }

  // Returns token name;
  function name() external view returns (string memory) {
    return _name;
  }


  // Returns token symbol;
  function symbol() external view returns (string memory) {
    return _symbol;
  }


  // Returns token decimal;
  function decimal() external view returns (uint8) {
    return _decimal;
  }

  // returns tokens totalSupply
  function totalSupply() external view returns (uint256) {
    return _totalSupply;
  }

  // returns a user balance 
  function balanceOf(address _addr) external view returns (uint256) {
    return balance[_addr];
  }

  // transfer a token to an address
  function transfer(address _to, uint256 _value) external view returns (bool) {
    
  }

  //returns the number of token a spender is permitted to spend on behalf
  // of the owner
  function allowance(address _owner, address _spender) external view returns (uint256) {
    
    return _allowance[_owner][_spender];
  }

  function approve(address _spender, uint256 value) external view returns (bool) {
    
  }

  // Tranfer on behalf of the owner
  function transferFrom(address _from, address _to, uint256 value) external returns (bool) {}

}
