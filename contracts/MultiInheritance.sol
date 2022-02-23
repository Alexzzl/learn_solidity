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


contract B  {
    string public helloworld;

    constructor(string memory _helloworld) {
        helloworld = _helloworld;
    }

    function getHelloWorld() public view virtual returns (string memory){
        return helloworld;
    }
}

contract  C is A('A'), B('helloWorld') {

}

contract  D is A, B {
    // constructor() A("A") B("HelloWorld"){
    //     // helloworld = _helloworld;
    // }
    constructor(string memory _name, string memory _helloworld) A(_name) B(_helloworld){

    }

}
