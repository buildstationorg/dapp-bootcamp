// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataTypes {
    /*
    -- UINT --
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
    uint là viết tắt của unsigned integer, có nghĩa là số nguyên không âm
    và bạn có thể lựa chọn kích thước của nó từ uint8 đến uint256
        uint8   bắt đầu từ 0 tới 2 ** 8 - 1
        uint16  bắt đầu từ 0 tới 2 ** 16 - 1
        ...
        uint256 bắt đầu từ 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint public u = 123; // uint là viết tắt của uint256


    /*
    -- INT --
    int nghĩa là integer, có nghĩa là số nguyên âm và không âm
    và bạn có thể lựa chọn kích thước của nó từ int8 đến int256
    int8    bắt đầu từ -2 ** 7 tới 2 ** 7 - 1
    int16   bắt đầu từ -2 ** 15 tới 2 ** 15 - 1
    ...
    int128  bắt đầu từ -2 ** 127 tới 2 ** 127 - 1
    int256  bắt đầu từ -2 ** 255 tới 2 ** 255 - 1
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int public i = -123; // int là viết tắt của int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // minimum and maximum of uint
    uint public minUint = type(uint).min;
    uint public maxUint = type(uint).max;


    /*
    -- BOOL --
    bool có nghĩa là Boolean và có 2 giá trị true và false
    */
    bool public trueVar = true;
    bool public falseVar = false;


    /*
    -- ADDRESS --
    address là một kiểu dữ liệu đặc biệt trong Solidity cho phép lưu trữ địa chỉ của một tài khoản Ethereum
    */
    address public exampleAddress = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;


    /*
    -- BYTES --
    Trong Solidity, kiểu dữ liệu byte đại diện cho một chuỗi byte. 
    Solidity có hai loại kiểu bytes:

     - Array byte có kích thước cố định
     - Array byte có kích thước động.

     Từ bytes trong Solidity đại diện cho một Array động của byte. Căn bản là viết tắt của byte[] .
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]
    bytes c = "abc"; //  [01100001, 01100010, 01100011]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBool; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
    bytes1 public defaultByte; // 0x00
}
