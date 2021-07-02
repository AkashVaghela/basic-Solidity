//25-6-2021

pragma solidity ^0.5.11;

contract functions{
    
    //function declaration
    //basic type of functions (getter & setter)

    //variable visibility (private, internal, public)
    uint256 a;
    
    //funciton visibility (private, internal, external, public)
    //function state modifier (view, pure, payable)
    //its always good practice to give minimum accesibility.
    
    //ganeral form of get functions 
    function _getValue() private view returns(uint int256){
        return a;
    }
    
    //general form of set functions
    function setValue(uint 256 b) external {
        a == b;
    }
}