# Dice Game Challenge Solution

I have completed 🚩 **Challenge 3: Dice Game**, a part of my journey through the SpeedRunEthereum series. This challenge was an insightful exploration into the use of randomness within smart contracts on the Ethereum blockchain and highlighted the challenges and vulnerabilities associated with generating random numbers in a deterministic environment.

![Dice Game Challenge](https://github.com/Ifechukwudaniel/se-2-challenges/assets/47566579/a5560446-3b22-4676-8fa8-33b544acc2f9)

## Key Learnings

- **Randomness on the Blockchain**: Discovered the complexity of achieving true randomness in a deterministic system like Ethereum and explored various methods, including the weak form of randomness using block hashes.
- **Smart Contract Exploitation**: Developed an understanding of potential vulnerabilities in smart contracts through the creation of a contract designed to exploit the Dice Game's randomness mechanism.
- **Advanced Smart Contract Interactions**: Gained experience in contract-to-contract interactions, specifically how to manipulate contract calls to predict and exploit outcomes favorably.

## Challenge Overview

- **Dice Game Mechanics**: Analyzed the `DiceGame.sol` contract to understand its randomness generation and the game's win conditions.
- **Exploit Contract Creation**: Crafted a contract, `RiggedRoll.sol`, designed to predict the outcome of the dice roll by mimicking the randomness generation of the `DiceGame.sol` contract and ensuring victory before making a roll.
- **Deployment and Testing**: Deployed both the `DiceGame` and `RiggedRoll` contracts, thoroughly testing the exploit in a local blockchain environment to ensure its effectiveness.

## Deployment

The successful deployment of the exploit demonstrated not only the feasibility of predicting and exploiting the game's randomness but also highlighted the importance of robust randomness generation mechanisms in smart contracts for secure and fair decentralized applications.

## Conclusion

Completing this challenge has significantly deepened my understanding of smart contract development, particularly around the areas of security, randomness, and the ethical considerations in blockchain development. It has prepared me for further exploration and development in the Ethereum ecosystem.

---

👨‍💻 **Challenge Repository**: [GitHub - Dice Game](#)

💬 **Discuss and Get Help**: Engage with fellow developers and seek assistance in the [Challenge 3 Telegram Group](https://t.me/+3StA0aBSArFjNjUx).

🚀 **Next Steps**: Ready to tackle more challenges? Continue honing your Ethereum development skills with the next set of challenges on [SpeedRunEthereum.com](https://speedrunethereum.com).
