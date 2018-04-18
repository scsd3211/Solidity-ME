pragma solidity ^0.4.0;

contract StructGetter{
  struct S{
    uint a;
    string b;
    bytes32 c;

  }

  S public s = S(10,"Hello", hex"1234");
  function f() returns (uint , bytes32){

    var (a,b,c) = this.s();

    return (a,c);
  }



}
