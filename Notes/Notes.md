
All websites look same on all browsers. Have you ever thought 
why??

Ans: Because All they follow standards. standards set by W3C World wide web consortium.

These standards are set around the three key things every web developer needs to have some familiarity with - HTML, CSS, and JavaScript.The W3C sets standards around how a web browser like Chrome must understand, run, and display the code being written by a web developer using HTML, CSS, and JavaScript.

What even is a blockchain?

A blockchain is a distributed, digital, immutable ledger that is used to record transactions and store data in a secure and transparent manner. Network of nodes that collectively maintain a single source of truth

=> Transactions are secured through Consensus mechanisms. (will discuss consensus in next chapters)

What is Node ?
In simple terms, Consider it a computer running the blockchain software

Genesis Block
The first block in the blockchain. It is the only block that does not reference a predecessor block.

Mining Node
Type of node, called a mining node, is responsible for grouping together new transactions being made on a network into a block, verifying them, and proposing the block to be included onto the global ledger by everyone else

Fork Process:
When 1 blockchain splits into 2 chains then that process is called Fork. It has 2 types 

Hard fork: A fork that is not backward compatible, meaning that nodes running the old version of the protocol will not be able to validate blocks created on the new version of the protocol.

Soft Fork: A fork that is backward compatible, meaning that nodes running the old version of the protocol will be able to validate blocks created on the new version of the protocol, but nodes running the new version of the protocol will not be able to validate blocks created on the old version of the protocol

Example of Fork: Bitcoin into Bitcoin & Bitcoin Cash in 2017

Web-1 VS Web-2 VS Web-3

Web1: Read 📖

Web2: Read-Write 📖 🖊️

Web3: Read-Write-Own 📖 🖊️ 🔑

Ethereum:

Ethereum is a decentralized blockchain that supports smart contracts. Unlike Bitcoin, which only supports the transfer of the Bitcoin token around the network, Ethereum is more general purpose.

Developers can build dApps, or decentralized applications, which can be executed on the Ethereum network on the Ethereum Virtual Machine (EVM). The global state of Ethereum therefore consists of more than just the balance of every account, but also the state of each dApp

Ethereum first used proof of work for consensus but then The Serenity Patch, introduced in September of 2022, made the switch for Ethereum going from Proof of Work to a Proof of Stake mechanism

ERC20 Tokens

In addition to Ether, people can create and use their own currencies on Ethereum. The most common form of currency is ERC20 tokens. ERC20 Tokens are smart contracts that fit a specific standard. Developers can extend beyond the standard, but should meet the minimum requirements when making their own token. The standardization allows for digital wallets to easily support all types of tokens, without needing specialized code for each token created.

ERC-20 tokens are tokens designed and used solely on the Ethereum platform.

Optional

Token Name
Symbol
Decimal (up to 18)

Mandatory

totalSupply
balanceOf
transfer
transferFrom
approve
allowance

How is Ethereum different to Bitcoin?

1. Ethereum’s block time is shorter
In Ethereum the time between blocks is around 14 seconds, compared with Bitcoin’s ~10 minutes.

2. Ethereum has smaller blocks
In Bitcoin, the maximum block size is specified in bytes (currently 1 MB) whereas Ethereum’s block size is based on complexity of contracts being run – it’s known as a Gas limit per block. Currently the maximum block size in Ethereum is around 1,500,000 Gas
Data-wise currently most Ethereum blocks are under 2 KB in size.



Bonus >>>

Some Good Hack Reads 
https://peckshield.medium.com/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536


ERC721 and ERC1155 Tokens
These are what are also called NFTs. These two standards, similar to ERC20, provide a base line for what requirements should be met when creating NFTs

Solidity

Local

Declared inside a function and are not stored on blockchain

State

Declared outside a function to maintain the state of the smart contract

Stored on the blockchain

Global

Provide information about the blockchain. They are injected by the Ethereum Virtual Machine during runtime.

Includes things like transaction sender, block timestamp, block hash, etc.

Public Functions:
meaning it can be called from within the contract and also externally.

View Keywork:
meaning that the function doesn't change the state of any variable view functions in solidity do not require gas.

View: Functions which do not change any state values
uint public x= 1;
 view function(uint y){return x+y}
Pure: Functions which do not change any state values and also do not read any state values
pure function (uint y){return x+y} error

Events

Events allow contracts to perform logging on the Ethereum blockchain. Logs for a given contract can be parsed later to perform updates on the frontend interface, for example. They are commonly used to allow frontend interfaces to listen for specific events and update the user interface, or used as a cheap form of storage.

Memory Keyword:
memory - the value is stored only in memory, and not on the blockchain  it only exists during the time the function is being executed.Memory variables and Storage variables can be thought of as similar to RAM vs Hard Disk.

Delete Keyword:
Delete does not change the array length It resets the value at index to it's default value,

DO YOUR OWN RESEARCH:
What is the value of block.coinbase?
ANS: ADDRESS OF THE MINER WHO MINED THE BLOCK.

What is ERC-20?

ERC stands for Ethereum Request for Comment.Essentially, they are standards that have been approved by the community and are used to convey technical requirements and specifications for certain use cases.

ERC-20 specifically is a standard which outlines the technical specification of a fungible token.
A fungible token is one in which all 'parts' of the token are the same. Exchanging 1 ETH for a different 1 ETH doesn't change anything. You still have 1 ETH. Therefore, ETH is a fungible token. All fiat currencies are fungible as well.

_mint(msg.sender, 10 * 10 ** 18);

_mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself. External users cannot call this function.
