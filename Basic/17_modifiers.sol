//27-6-2021

pragma solidity ^0.5.11;

contract modifiers{

//1. declaration
//2. passing arguments
//3. chaining modifiers
//4. exaple of access control

    uint value;
    address user;

    //1. declaration
    modifier first (uint _value){
        require(_value > 0, 'error has occured');
        _;
    }

    modifier second(address _user){
        require(_user != '0xFadijdaADojdwaadw','you are restricted');
        _;
    }

    //2. passing arguments
    //3. chaining modifiers

    function test(uint _value, address _user) external first(_value), second(_user){
            
    }
}

//4. exaple of access control

contract test{

    address admin;

    modifier onlyOwner(address _admin){
        require(msg.sender == admin, 'only admin');
        _;
    }

    function test(address _admin) external onlyOwner(_admin) {
        
    }
}