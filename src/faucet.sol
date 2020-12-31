// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

/**
 * 这是我的第一个智能合约
 */
contract Faucet {
  function withdraw(uint withdraw_amount) public {
    require(withdraw_amount <= 100000000000000000);
    msg.sender.transfer(withdraw_amount);
  }

  receive() external payable {
    // custom function code
  }

  // function () public payable {}
  fallback() external payable {}
}
