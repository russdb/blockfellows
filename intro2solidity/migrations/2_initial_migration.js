var xor = artifacts.require("XOR");
var concat = artifacts.require("Concatenate");
var Fibonacci = artifacts.require("Fibonacci");
var Greeter = artifacts.require("./greeter.sol");


module.exports = function(deployer) {
  deployer.deploy(xor);
  deployer.deploy(concat);
  deployer.deploy(Fibonacci);
  deployer.deploy(Greeter);
};
