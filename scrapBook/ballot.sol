pragma solidity ^0.4.0;


contract CallerContract {

    CalledContract toBeCalled = CalledContract(0x14723a09acff6d2a60dcdf7aa4aff308fddc160c);

    function getNumber() constant returns(uint) {
        return toBeCalled.getNumber();        
    }

    function getWord() constant returns(bytes32) {
        return toBeCalled.getWord();
    }
}


contract CalledContract {
    uint number = 23;
    bytes32 word = "Hello etwin";

    function getNumber() constant returns(uint) {
        return number;
    }

    function setNumber(uint _number) {
        number = _number;
    }

    function getWord() constant returns(bytes32) {
        return word;
    }
}