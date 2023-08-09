const Chat = artifacts.require("Chat");

module.exports = function (deployer) {
  deployer.deploy(Chat);
};

// made this file in migrations folder
// code to deploy the chat contract

// after making this file run truffle compile
// then truffle migrate --reset
// the get the smart contract address from terminal
