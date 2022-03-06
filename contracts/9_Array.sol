// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Array {
    uint[] public array1;
    uint[3] public array2;
    uint[] public array3= [1,2,3];

    function push(uint _number) public {
        array1.push(_number);
    }

    function pop() public {
        array1.pop();
    }

    function getLength() public view returns (uint) {
        return array1.length;
    }

    function deleteElement(uint _idx) public {
        delete array1[_idx];
    }

    function compactDelete(uint _idx) public {
        require(_idx >= 0 && _idx < array1.length , "Index out of range");
        if(_idx == array1.length - 1) {
            array1.pop();
        } else{
            uint lastElement = array1[array1.length - 1];
            array1[_idx] = lastElement;
            array1.pop();
        }
    }

    function test() public {
        array1.push(111);
        array1.push(222);
        array1.push(333);
        array1.push(444);

        compactDelete(0);
        assert(array1.length == 3);
        assert(array1[0]==444);
        assert(array1[1]==222);
        assert(array1[2]==333);

        compactDelete(2);
        assert(array1.length == 2);
        assert(array1[0]==444);
        assert(array1[1]==222);

        compactDelete(0);
        assert(array1.length == 1);
        assert(array1[0]==222);
        
    }
}