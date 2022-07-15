    //SPDX-License-Identifier: GPL3.0

    // Contract Anyone can send ether ,only the owner can withdraw (A basic wallet example)

    pragma solidity^0.8.0;

    contract EtherWallet {
        address payable public owner;

        constructor() {
            owner = payable(msg.sender);
        }

        receive() external payable{}

        function withdraw(uint _amount) external{
            require(msg.sender == owner,"Caller is not owner");
            owner.transfer(_amount);
        }

        function getBalance() external view returns (uint){
            return address(this).balance;
        }
    }




