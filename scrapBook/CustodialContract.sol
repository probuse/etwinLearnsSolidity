pragma solidity ^0.4.0;


contract CustodialContract {

    address client;
    bool _switch = false;
    function CustodialContract(){
        client = msg.sender;
    }

    modifier ifClient() {
        if (msg.sender != client) {
            throw;            
        } else {
            _;
        }        _
    }

    function depositFunds() payable {

    }

    function withdrawFunds(uint amount) {
        if (client.send(amount)) {
            _switch = true;
        } else {
            _switch = false;
        }
    }

    function getFunds() constant returns(uint) {
        return this.balance;
    }

}