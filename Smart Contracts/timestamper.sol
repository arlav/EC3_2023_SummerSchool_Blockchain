pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Timestamper is Ownable {
    event Timestamp(uint256 indexed hash);

    function timestamp(uint256 hash) public onlyOwner {
        console.log("Timestamping:", hash);
        emit Timestamp(hash);
    }

    function batchTimestamp(uint256[] memory hashes) public onlyOwner {
        for (uint256 i = 0; i < hashes.length; i++) {
            emit Timestamp(hashes[i]);
        }
    }
}