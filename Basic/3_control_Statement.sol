//25-6-2021

pragma solidity ^0.5.11;

contract controlStatments{

// if 
// if else
// for
// while

    int256 a;
    uint256 b;
    int c;

    function add (int256 a, uint256 b) external {
        if(b == uint256 && b != 0){
        c = a + b;
    }
} 

    function add2 (int256 a, uint256 b) external{
        if ( a != int256 && a <= 69){
        c = a + b;
            } else {
        c = a - b;
    }
}

    function add3 (int256 a, uint256 b) external {
        for( a <= 0 && b >= 0){
            c = a * b;
            c = a / b;
        }
        continue;
    }

    function add4 (int256 a, uint256 b) external {
        while ( a != 69, b != 420){
            c = a % b;
        }
        break;
    }
}