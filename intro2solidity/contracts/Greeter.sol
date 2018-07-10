//which version to use
pragma solidity ^0.4.19;

contract Greeter {

    // declare a string, named greeting, that is private.
    string private greeting;

    function Greeter(string _greeter) public {
        greeting = _greeter;
    }

    function greet() 
        public 
        view 
        returns (string) 
    {
        return greeting;
    }
    
}