pragma solidity ^0.4.0;

contract xor {
    
    //declare var
    uint private input1;
    uint private input2;
    
    //set the number
    function set(uint x, uint y) public {
        require(x <= 1);
        require(y <= 1);
        input1 = x;
        input2 = y;
    } //end set()
    
    //getter
    function get() public view returns (bool) {
        if (input1 == input2)
            return false;
        else 
            return true;
    } //end get()
    
} // end xor