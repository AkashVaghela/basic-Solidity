//26-6-2021

pragma solidity ^0.5.11;

contract struct1{

//1. declaration of struct
//2. operations on struct (C R U D)
//3. array of struct and mapping

    struct user{
        address userIdnetity;
        string password;
        uint age;
    }

   function test(address calldata _userIdentity, string calldata _password, uint calldata _age) external{

        //datatype memory _name = new datatype (arguments)

        //2. create operation & sequence of argument is important
        user memory user1 = new user (msg.sender, _randomShit, _age);       
        //2. create opration  & sequence of argument is not important  
        user memory user2 = new user ({ string : _randomCrap,uint : _age, address : msg.sender});     

        user1.address;      //2. read operation
        user1.string; 
        user2.uint;      

        user1.address = msg.sender;     //2. update operation
        user2.uint = 59;    

        delete user1;            //2. delete operation

   }
}

//3. array of struct & mapping

contract struct2 is struct1{ 

    struct user{
        address address1;
        uint score;
        string name;
    }

    //array declaration of struct
    user[] myArray;

    //mapping with struct
    mapping (address => user) record;

    function test() external {

        myArray.push(user1);            //2. create operation for array
        record[msg.sender] = user2;     //2. create operation for array

        myArray[1];                     //2. read operation for array
        record[msg.sender];             //2. read operation for mapping

        myArray[0] = user1;             //2. update operation for array
        record[msg.sender] = [user1];   //2. update operation for mapping

        delete myArray[1];              //2. delete operation for array
        delete record[msg.sender];      //2. delete  operation for mapping          
    }
}