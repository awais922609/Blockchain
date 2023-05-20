daY4
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
