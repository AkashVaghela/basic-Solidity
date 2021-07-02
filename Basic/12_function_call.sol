//27-6-2021

pragma solidity ^0.5.11;

//1. call functions from other contract
//2. import keyword
//3. contract interface
//4. error propogations

//1. calling function
contract A{
    function callHelloWorld () external view returns(string memory){
        return B.helloWorld;
    }
}

contract B{
    function helloWorld () internal pure returns(string memory){
        return helloWorld;
    }
}

//2. import keyword: when other contract is in other file

import "./2_functions.sol";
import "./4_array.sol";

//3. contract interface: only signatures of required functions are added. we can also use 'interface keyword'
contract InterfaceFunction{
    function _getValue() private view returns(uint int256);
    function setValue(uint 256 b) external;
}

interface arrays{
    function test (uint256 [ ] calldata value) external;
    function test2 () internal;
}   

//4. error propogations
