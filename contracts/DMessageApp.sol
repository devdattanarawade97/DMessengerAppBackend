
// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract DMessageApp {


  //@notice messageLeagder stores messages
  //@params first address is sender address mapping to receiver address and receiver address is mapping to msg content
  //
   mapping (address =>mapping(address=>string) ) messageLeadger;
   
   //@notice sends the message tor receiver address
   //@dev receiver address can not be yours address
   function sendMessage(address receiverAddress,string memory message) public {
        
        require(receiverAddress!=msg.sender, "Receiver address can not be yours address");
        messageLeadger[msg.sender][receiverAddress]=message;
       
       
        
   }


   //@notice retrives message for sender address 
   //@dev view function only 
   //@dev sender address can not be yours address
   function retriveMessage(address senderAddress) external view returns(string memory retrivedMessage){

    //  require(senderAddress!=msg.sender, "Sender address can not be yours address");
   
     retrivedMessage= messageLeadger[senderAddress][msg.sender];
   }
    
}
