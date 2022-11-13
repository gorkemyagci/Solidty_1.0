// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Todo {
    string public todo;
    string[] public todos;
   constructor(string memory _todo){
       todo = _todo ;
       todos.push(_todo);
   }

   function getTodos() public view returns (string[] memory) {
       return todos;
   }

   function addTodo(string memory _todo) public {
    todos.push(_todo);
   }

   function todosCount() public view returns (uint256) {
       return todos.length;
   }

   function removeItemById(uint i) public {
    delete todos[i];
   }
   
   function removeAllTodos() public {
       delete todos;
   }

}
