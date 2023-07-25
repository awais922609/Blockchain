Day 1 
All websites look same on all browsers. Have you ever thought why??
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

Web-1 VS Web-2 VS Web-  3
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


Day4
Visibility Quantifiers
Following are various visibility quantifiers for functions/state variables of a contract.

external − External functions are meant to be called by other contracts. They cannot be used for internal call. To call external function within contract this.function_name() call is required. State variables cannot be marked as external.

public − Public functions/ Variables can be used both externally and internally. For public state variable, Solidity automatically creates a getter function.

internal − Internal functions/ Variables can only be used internally or by derived contracts.

private − Private functions/ Variables can only be used internally and not even by derived contracts.


** In order to interact with the contract we need 2 things
1. Address of the contract to interact with
2. ABI (Application Binary Interface) . Explained later

ABI : interfaces compile down to ABI.
The ABI tells solidity and other programming languages that how it can interact with another contract.
Anytime you want to interact with a deployed contract you would be needing ABI.


Tuple: A list of potentially different types.

Some Function modify the state of the blockchain while some do not
** View and Pure does not modify the state of the blockchain

* We can also specify different data locations in our functions
calldata and memory=>indicates these variables are temporary and only exist for duration of function.
* storage are permanent variables and will stay there forever.

* calldata is used to access function arguments and input data, memory is used for temporary storage within function execution, and storage is used for persistent storage of state variables.
* Call data is read only 

=> We can deploy other contracts from current contract in two lines.
1st. Import the contract using import "/path/to/contract"
2nd. Using new keyword as SimpleStorage simpleStorage = new SimpleStorage();

** Inheritance **
=> we use is keyword for inheritance
=> use override keyword if you want to change the functionality of the import contract function
=> Add virtual with the main imported contract function.

** You can send ethers to other contracts using transfer , send and call
=> transfer (2300 gas throw errors)
=> send (2300 gas , returns bool)
=> call (forward all gas or set gas , returns bool)

** FallBack
In Solidity, the fallback function is a special function that is executed when a contract receives a message (transaction) that does not match any of its defined function signatures. 

** Contract VS Interface
a c ontract represents a self-contained unit of code with both implementation details and state variables, while an interface defines the external-facing functions and serves as a blueprint for contracts to adhere to without providing implementation details.
