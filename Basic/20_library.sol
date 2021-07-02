//27-6-2021

pragma solidity ^0.5.11;

//1. with pure function
//2. using struct
//3. using for
//4. deployed vs embedded libraries

//1. with pure function
library myLibrary1{
    
    function add(uint a) pure public returns(uint) {
        return a + 10;
    }
}

contract library{

    function test() external{
        uint result = myLibrary.add(10);
    }
}

//2. using struct

library myLibrary2{

    struct player{
        string name;
        uint score;
    }

    function incrementScore (player storage _player, string _name, uint _points) external{
        _player.score += _points;
    }

contract library {

    mapping (uint => myLibrary2.incrementScore) record; 

    function test() external {
        myLibrary2.incrementScore();
    }
}
}