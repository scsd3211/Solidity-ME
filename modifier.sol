pragma solidity ^0.4.0;
contract MutiModifier{
  address owner  = msg.sender;
  modifier onlyOwner{
    if(msg.sender != owner)
      throw;
    _;

  }

  modifier inState(bool state){
    if(!state)
      throw;
      _;
  }

  function f(bool state) onlyOwner inState(state) returns (uint){

    return 1;
  }

}
