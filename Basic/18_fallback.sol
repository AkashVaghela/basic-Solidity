//27-6-2021 

pragma solidity ^0.5.11;

contract fallback{

//1. declaration
//2. fallback vs regular function
        //1. you can only have one fallback function per contract
        //2. only EXTERNAL as visibility is allowed.
//3. sending data
//4. sending ether
//5. CASE 1: callback function that does not exist
//6. CASE 2: send ether from regular address
//7. CASE 3: send ether from smart contract
//8. reject incoming calls

    //1. declaration
    //3. sending data

    function () external {
        bytes msg.sender;   //to send data
        assembly
    }

    //4. sending ether
    function () payable external{
    //8. reject incoming calls
        revert ();  
    }
}

//CASE 1: callback function that does not exist.

contract A{

    function () external{
     }
}

contract interfaceA{
    function doesntExist() external{

    }
}

contract B{

    function test() external{
        A a = new A();
        interfaceA.doesntExist();
    }
}

//CASE 3: send ether from smart contract 

contract A{

    function test() external{

    }
} 

contract InterfaceA{
    function doesntExist() external{

    }
}

contract B{

    function test() external{
        A a = new A();
        InterfaceA.doesntExist();
    }
}