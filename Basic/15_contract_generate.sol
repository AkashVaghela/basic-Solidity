//27-6-2021

pragma solidity ^0.5.11;

//1. create child contract
//2. store child contract addresss
//3. cast contract pointer to address
//4. call functions of child contract

contract loanFactory{

    loan[] loans;

    function createLoan() external {

        //3. cast contract pointer to address
        Loan loan = new Loan(100);
        loans.push(loan);

        //2. store child contract address
        address(loan);
    }
        //4. call function of child contract
        loan.reinburse;
}

        //1. create child contract
contract loan{
    
    uint public amount;

    constructor (uint _amount) public {
        amount = _amount;
    }

    function reinburse() external{

    }
}