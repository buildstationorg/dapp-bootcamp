// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract AdvancedStorage {

    string public maintainerName = "zxstim";
    uint8 public version = 1;
    address public donationAddress = 0xe3d25540BA6CED36a0ED5ce899b99B5963f43d3F;

    struct Person {
        string name;
        uint8 age;
        bool overEighteen;
        address uuid;
        uint256 assetValue;
        int256 debtValue;
    }

    Person[] private listOfPeople;

    mapping(address => Person) uuidToPerson;

    function storePerson(string memory _name, uint8 _age, bool _overEighteen, uint256 _assetValue, int256 _debtValue) public {
        _assetValue *= 1e18;
        _debtValue *= 1e18;
        listOfPeople.push(Person({name: _name, age: _age, overEighteen: _overEighteen, uuid: msg.sender, assetValue: _assetValue, debtValue: _debtValue}));
        uuidToPerson[msg.sender] = Person({name: _name, age: _age, overEighteen: _overEighteen, uuid: msg.sender, assetValue: _assetValue, debtValue: _debtValue});
    }

    function retrievePerson(address _address) public view returns (Person memory person) {
        return uuidToPerson[_address];
    }
}

