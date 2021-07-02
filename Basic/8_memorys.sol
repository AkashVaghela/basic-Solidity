//27-6-2021

pragma solidity ^0.5.11;

contract storageType{

    //1. storage
    //2. memory
    //3. stack
    //4. calldata

    //1. storage: stores variables in blockchians. state variables are always stored here & need to use keyword during use of pointers.
    uint a;
    struct user{        //struct
        string name;
    }

    uint [] admin;
    user [] userArray;      //array
    
    function test1() external {
        user storage user = userArray [0];  //pointer declaration
        user.name = "anything";
    }   

    //2. memory: stored temporarily inside function during function execution.
    function test2() external{
        user memory users = users[0];

        useLess(user);
    }

    function useLess(user memory user) internal{

    }

    //3. stack: ecvery simple declaration inside function. this location is only availble to function in which variables are defiend.
    //it's life is as long as function lasts & when function stops executing it's not available.

    function test3() external{
        uint age;   //stack 
    } 

    //4. calldata: only available to EXTERNAL & PUBLIC function.

    function test4(uint[] calldata _admin) public{

    }
}