//25-6-2021

pragma solidity ^0.5.11;

contract myArrays{

    //array types (1) STORAGE ARRAY (stores perminantly on blockchian & can be static or dynamic) (2) MEMORY ARRAY (stores temporarily & always static)
    
    //STORAGE arrays are declared as state variavles.

    address [] userAccount;  //dynamic STORAGE arrays declaration.            
    string [] userPassword;

    mapping ( string [] => address []) record; 

    //arrays in functions
    //for EXTERNAL functions "CALLDATA" is used, where as for PRIVATE/INTERNAL functions "MEMORY" keyword is used as function parameter.
    
    function authentication (address [] calldata userAccount, string [] calldata userPassword) external {

        //MEMPRY  array are declared as local variables.
        uint256 [] memory nonce = new uint256[10];   //dynamic MEMORY  array declaration.
        if (userAccount == address && userPassword == string){
                //code
        } else {
                return ("invalid input");
        }    
    }
}

contract operations{
    
    //operations on arrays includes (DECLARATION, CREATE, READ, UPDATE, DELETE)
    //operations on STORAGE & MEMORY arrays are almost identical. but push operation can't be performed on MEMORT arrays.

    //below example is for STORAGE arrays.

    uint256 [ ] value;

    function test (uint256 [ ] calldata value) external {

        //DECLARATION (datatype [] arrayname)
        uint256 [ ] myArray;

        //CREATE operation
        value.push (69);
        value.push (99);
        value.push (350);
        value.push (411);
        value.push (420);
       
        //output: [69, 99, 350, 411, 420]

        //READ operation
        value[4];           //will return value at index 4. a.k.a 420.

        //UPDATE operation
        value[4] = 430;     //will replace value at index 4 with 430. 

        //DELETE operation
        delete value[4];    //will delete element at index 4. 430 will be erased from array.

        //output: [69, 99, 350, 411]
    }

    //below example is for MEMORY arrays.

    function test2 () internal {

        //DECLARATION (datatype [] memory arrayname = new datatype[] (size);)
        string [] memory name = new string [](10);

        //CREATE operation
        //you can't use push method for MEMORY arrays

        string [] memory name = new string [](10);
        name[0] = subham;
        name[1] = akash;
        name[2] = kuldeep;
        name[3] = karsh;
        name[4] = sahas;
        name[5] = evalyn;
        
        //outpur: [subham, akash, kuldeep, karsh, sahas, evalyn]

        //READ OPERATION
        string [] memory name = new string [](10);
        name[2];            //will read name at index 2. aka kuldeep

        //UPDATE OPERATION
        string [] memory name = new string [](10);
        name[3] = jirka;    //will replace element of index 3 with jirka.

        //DELETE OPERATION
        string [] memory name = new string [](10);
        delete name[5];     //will delete element with index 5
    
        //outpur: [subham, akash, kuldeep, jirka, sahas]

    }
}