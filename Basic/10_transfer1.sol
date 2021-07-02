//27-6-2021
//sending ether to smart contract (EOA => smart contract)

pragma solidity ^0.5.11;

contract transfer1{

    //tracking transactions
    mapping(address => uint) balances;

    function hold() external payable{
        if (msg.value < 1 ether){
            revert ();                       //error handling
        }
        balances[msg.sender] += msg.value;  //msg.sender is address that sends transactions.
    }

    function balanceOf() view returns(uint){
        return aaddress(this).balance;
    }
}