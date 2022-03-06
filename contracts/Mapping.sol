// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Mapping {
    event LOG(address, uint);

    mapping(address => uint) public myMap;
    address[] public myMappingAddr;

    function setMapping(address _myAddr, uint _number) public {
        myMap[_myAddr] = _number;
        myMappingAddr.push(_myAddr);
    }

    function getMapping(address _myAddr) public view returns (uint) {
        return myMap[_myAddr];
    }

    function deleteMapping(address _myAddr) public {
        delete myMap[_myAddr];
    }

    function getTotal() public view returns (uint) {
        require(myMappingAddr.length > 0, "The mapping has no values!");

        uint sum = 0;
        for (uint index = 0; index < myMappingAddr.length; index++) {
            address key = myMappingAddr[index];
            uint value = myMap[key];
            sum += value;
        }
        return sum;
    }

    function test() public {
        setMapping(0x5e625460969B9fa624b43E33141A95744e2FEB2F, 10);
        setMapping(0x07992Bf5B5E00796c82D1f8eF32D8939A05cF4f8, 20);
        setMapping(0xC79EB4931a0630f38606A9BDe3922582df61d0D7, 30);

        uint sum = getTotal();

        assert(sum == 60);
        
    }


}