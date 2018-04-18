pragma solidity ^0.4.0;

contract AccessGetter{

  uint public data = 10;

  function f() returns (uint ,uint ){

    return(data,this.data());
  }
}
