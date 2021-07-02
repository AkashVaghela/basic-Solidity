//27-6-2021

pragma solidity ^0.5.11;

//1. import ERC20 tokens
//2. Transfer ()
//3. Transfer () / approve ()

//1. imported ERC20 tokens
import "./ERC20.sol";

contract ERC20{

    //2. transger() method
    function Transfer() external{
        Token token = Token();          //instantiation
        token.transfer(msg.sender, 100);
    }

    function TransferFrom() external{
        Token token = Token();
        token.TransferFrom(msg.sender);
    }
}

contract Owner{

    function owner{
        Token.token = Token();
        token.approve();

        TransferFrom.tranfertoken = TransferFrom();
        TransferFrom.TransferFrom(amount);
    }
}
