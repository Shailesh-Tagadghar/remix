//Write a smart contract for multi-level Inheritance

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract college {
    string internal cname;
    string internal pname;

    function setCollege(string memory cn, string memory pn) public {
        cname = cn;
        pname = pn;
    }
}

contract student is college {
    string internal sname;
    uint256 internal rollno;

    function setStudent(string memory sn, uint256 rn) public {
        sname = sn;
        rollno = rn;
    }
}

contract exam is student {
    uint8[5] marks;

    function setMarks(uint8[5] memory m) public {
        marks = m;
    }

    function getPercentage() public view returns (uint256) {}

    function getDetails()
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            uint256,
            uint256
        )
    {
        uint256 total = 0;
        for (uint256 i = 0; i < 5; i++) {
            total += marks[i];
        }
        uint256 per = total / 5;
        return (cname, pname, sname, rollno, per);
    }
}
