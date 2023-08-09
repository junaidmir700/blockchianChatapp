// SPDX-License-Identifier: MIT

// first install node js from https://nodejs.org/en
// then install truffle using npm install -g truffle
// then install ganache from https://www.trufflesuite.com/ganache
// then install metamask from https://metamask.io/download.html

// to compile the contract use truffle compile
// to deploy the contract use truffle migrate
// to run the tests use truffle test

// make a folder and then in it run command truffle unbox pet-shop

// following is the smart contract of the app

pragma experimental ABIEncoderV2;
pragma solidity >=0.5.0 <0.9.0;

contract Chat {
    struct Message {
        address sender;
        string content;
        string name;
    }

    // above is the struct of a message

    Message[] public messages;

    // above is the array of messages

    function createMessage(string memory _content, string memory _name) public {
        messages.push(Message(msg.sender, _content, _name));
    }

    // above is the function to create a message

    function getMessages() public view returns (Message[] memory) {
        return messages;
    }

    // above is the function to get all the messages
}
