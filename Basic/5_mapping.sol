//26-6-2021

pragma solidity 0.5.11;

contract myMapping{

    //1. declaration
    //2. operations (C R U D)
    //3. nested mapping
    //4. array inside mapping

    address user;
    uint value;

    //1. declaration of mapping
    mapping (address => uint) balance;
    
    //3. nested mapping (eg. ERC 20 tokens)
    mapping (address => mapping(address => bool)) approved;

    function test() external{

        approved[msg.sender][operator] = true;     //2. create operation in nested mapping

        approved[msg.sender][operator];            //2. read operation in nested mapping

        approved[msg.sender][operator] = false;    //2. update operation in nested mapping

        delete approved[msg.sender][operator];     //2. delete operation in nested mapping 
    }

    function transaction() external {

        balance[msg.sender] = 200;      //2. create operation

        balance[msg.sender];            //2. read operation

        balance[msg.sender] = 69;       //2. update operation

        delete balance[msg.sender];     //2. delete opearation

    }
}

//4. array inside mapping

contract test{

    mapping(address => string[] myArray1) test1;

    function testMapping() external{

        tset1[msg.sender].push(akash);      //2. creat opetation 
        test1[msg.sender].push(subham);

        test1[msg.sender][1];               //2. read operation

        test1[msg.sender][0] = kuldeep;      //2. update operation

        delete test1[msg.sender][0] = kuldeep;      //2. delete operation

    }

}