//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TodoList {

    struct Todo {
        string text;
        bool boolean;
    }
    
    Todo[] public todos;

    function create_List(string memory _text) public {

        todos.push(Todo(_text , false));
    }

    function update(uint _index, string memory _text) public {
        todos[_index].text = _text;
    }

    function ToggleCompleted(uint _index) public {
        todos[_index].boolean = !todos[_index].boolean;
    }


}
