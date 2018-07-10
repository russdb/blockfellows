//Write your own contracts here. Currently compiles using solc v0.4.15+commit.bbb8e64f.
pragma solidity ^0.4.24;

contract Concatenate {

    function concatWithoutImport(string _input1, string _input2) 
      public 
      pure 
      returns (string) 
    {
        bytes memory sBytes = bytes(_input1);
        bytes memory tBytes = bytes(_input2);

        uint length1 = sBytes.length;
        uint length2 = tBytes.length;
        uint lengthTotal = length1 + length2;

        bytes memory result = new bytes(lengthTotal);

        for (uint i = 0; i < length1; i++) {
            result[i] = sBytes[i];
        }

        for (uint j = 0; j < length2; j++) {
            result[j+length1] = tBytes[j];
        }

        return string(result);
    }
}