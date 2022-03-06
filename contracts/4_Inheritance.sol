// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract A {

    string public name;

    constructor(string memory _name) {
        name = _name;
    }


    function getContractName() public view virtual returns (string memory) {
        return name;
    }
}

// contract B is A("B") {
contract B is A {
    string public helloworld;
    // function getContractName() public pure override(A) returns (string memory) {
    //     return "B";
    // }
    // constructor() A("This is B"){
    constructor(string memory _name, string memory _helloworld) A(_name){
        helloworld = _helloworld;
    }
}
