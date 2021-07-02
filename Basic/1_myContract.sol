//25-6-2021

pragma solidity ^0.5.11;

//import 

contract myContract{

    //basic structure of smart contract 
    //fixed size variable
    //variable size variables
    //user defined variables
    //built-in variables
    
    //state varivables (stored on blockchain)
    //functions are used to manipulate this variables
    
        //fixed size varivables 
        uint256 value;
        bool isReady;
        address userAccount;
        bytes32 value;
        uint [10] amount;   //static array

        
        //variable size varivables
        string name;
        mapping (uint256 => userAccount) myMapping;
        uint [] amount;     //dynamic array
        bytes _name;
        
        //user defined varivables
        enum day{
            SUN,MON,TUES,WED,THURS,FRI,SAT
        }
        struct user{
            string name;
            address userAccount;
            uint amount;
        }
        
        //build in varivables
            //tx.gas
            //tx.origin

            //msg.data
            //msg.gas
            //msg.sender
            //msg.sig
            //msg.value

            //block.blockhash(69);
            //block.coinbase;
            //block.difficulty;
            //block.gaslimit;
            //block.number;
            //block.timestamp;

            
    //modifiers
    
    //events
    
    //constructor
    
    //functions
}
