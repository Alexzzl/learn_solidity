// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Struct {
    //  what you need to do? task?
    //  completed? true or false

    struct Todo {
        string task;
        bool completed;
    }

    Todo[] public todoList;

    function create(string memory _task) public {
        // Todo memory  todo = Todo(_task, false);


        // Todo memory todo = Todo({
        //     task: _task,
        //     completed: false,
        // });

        Todo memory todo;
        todo.task = _task;
        todo.completed = false;

        todoList.push(todo);
    }

    function get(uint _index) public view returns (Todo memory) {
        return todoList[_index];
    }

    function getDetails(uint _index) public view returns (string memory task, bool completed) {
        Todo storage todo =  todoList[_index];

        return (todo.task, todo.completed);

    }
}