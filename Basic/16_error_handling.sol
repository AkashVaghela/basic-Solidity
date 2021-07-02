//27-6-2021

pragma solidity ^0.5.11;

contract errorHandling{

//1. what happens when error occurs?
        //when error occurs, further execution is stopped & every change is rollback. but gas will be consumed.
//2. throw()
//3. revert()
//4. require()
//5. assert()
//6. error in other contract

    uint value;
    address admin;

    function test(uint _value, address _admin) external{
        admin = _admin;
        if (_value > 0) {
            revert('invalid value');        //3. revert is used to show error messages.
        }

        require(_value == 0, 'value can not be 0');     //4. same as revert() but more efficient.
        assert(_address == address);                    //5. only condition is required & can't show error message.
    }
}

/*  require(): it's uesd when error generally occurs in smart contract life cycle.
    assert(): it's used when error should never occur. (fatal errors)   */

//6. errors in other contracts
contract A{

    uint a;

    function willThrowInOtherContract () external{
        B b = new B();
        b.error();
    }
}

contract B{
    
    function error() external{
        revert('error has occured');
    }
}