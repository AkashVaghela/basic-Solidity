//27-6-2021
//sending ether form smart contract (contract => EOA/contract)

pragma solidity ^0.5.11;

contract transactions2{

    //address & address payable both are different.
    //type casting: address payable can be converted to address but vice versa not true

    address payable [] recepients;

    function sendEther () external {
        recepients.transfer(1 ether);   //transfer method returns error on failure.
        recepients.send(1 ether);       //send method returns boolean value on failure.
    }
}
