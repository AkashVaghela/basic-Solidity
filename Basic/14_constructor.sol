//27-6-2021

pragma solidity ^0.5.7;

//1. declaration
//2. difference between constructor & regular function
        //you can't call consructor inside function.
        //you can only use two visibility modifiers (PUBLIC or INTERNAL).
        //you can call functions inside constructor.
        //while using INTERNAL keyword, we need to instantiate that contract.
//3. admin pattern
//4. calling other functions
//5. calling parent constructor

contract parent{

    //1. declaration
    constructor (uint) public{
        //code
    }
}

contract child is parent {

    uint value;

    //5. calling parent constructor
    constructor (uint _a) parent(_a) public{

    }
}