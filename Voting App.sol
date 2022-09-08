// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract VotingApp{
    address owner;
    constructor() {
         owner = msg.sender;
    }
    enum votesTo {
        milad,
        owais,
        shehryar,
        asher
    }
    struct vote {
        uint voteTo;
    }
    vote[] private votes;
    mapping(address => bool) userVoteCasted;
    mapping(address => bool) isBlackListedUser;

    function castVote(uint voteTo) public returns(string memory){
        require(!userVoteCasted[msg.sender], "Vote Already Casted");
        require(!isBlackListedUser[msg.sender], "You Are Not Allowed To Cast Vote");
        require(voteTo < 4, "You can only choose 0: milad, 1: owais, 2: shehryar, 3: asher");
        // require(owner != msg.sender, "Owner Not Allowed To Cast Vote");

        votes.push(vote(voteTo));
        userVoteCasted[msg.sender] = true;
        return "Vote casted";
    }

    function addToBlacklist(address userAddress) public returns(string memory){
        require(owner != msg.sender, "You don't have right's to blacklist a voter");

        isBlackListedUser[userAddress] = true;
        return "Blacklisted successfully";
    }

    function removeFromBlacklist(address userAddress) public returns(string memory){
        require(owner != msg.sender, "You don't have right's to whitelist a voter");

        isBlackListedUser[userAddress] = false;
        return "Whitelisted successfully";
    }

    function getVotes() public view returns(vote[] memory){
        require(owner != msg.sender, "You don't have right's to check votes");
        return votes;
    }
}
