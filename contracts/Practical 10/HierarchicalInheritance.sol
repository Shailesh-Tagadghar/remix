//Write a smart contract for hierarchical Inheritance

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract animal {
    uint256 legs;
    string color;

    function setA(uint256 a, string memory b) public {
        legs = a;
        color = b;
    }
}

contract dog is animal {
    string name;
    string species;

    function setVal(string memory a, string memory b) public {
        name = a;
        species = b;
    }

    function getVal()
        public
        view
        returns (
            uint256,
            string memory,
            string memory,
            string memory
        )
    {
        return (legs, color, name, species);
    }
}

contract cat is animal {
    string name;
    string species;

    function setVal(string memory a, string memory b) public {
        name = a;
        species = b;
    }

    function getVal()
        public
        view
        returns (
            uint256,
            string memory,
            string memory,
            string memory
        )
    {
        return (legs, color, name, species);
    }
}

contract test {
    dog d = new dog();
    cat c = new cat();

    function dInherit()
        public
        returns (
            uint256,
            string memory,
            string memory,
            string memory
        )
    {
        d.setA(4, "Black");
        d.setVal("Simba", "Labrador");
        return d.getVal();
    }

    function cInherit()
        public
        returns (
            uint256,
            string memory,
            string memory,
            string memory
        )
    {
        c.setA(4, "White");
        c.setVal("Jennie", "Indie");
        return c.getVal();
    }
}