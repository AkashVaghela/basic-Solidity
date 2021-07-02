//27-6-2021

pragma solidity ^0.5.11;

contract events{

    //1. declaration
    //2. calling events

    //events are user to show output to consumers. e.g. showing trade from decentralised exchange on app/webpage to trader.

    //1. declaration [ event _name (field of events)]
    event trade (
        uint date,
        address indexed from, 
        address indexed to, 
        uint amount);

    function trade (address to, uint amount) external{
    
    //2. calling event
    emit trade (now, msg.sender, to, amount);
    }
}

/* NOTE:
1. gas cost for events is less than storage variables.
2. events can't be read in future.
3. using 'indexed' filters the events, but they are expensive.
4. maximum 3 events can be declared.
*/