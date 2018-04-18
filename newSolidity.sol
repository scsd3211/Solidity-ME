pragma solidity ^0.4.21;

contract D{
  uint x;
  functon D(uint a) public payable{
    x =a;
  }
}


contract C{
  D d = new D(4);

  function createD(uint arg) public {
    D newD = new D(arg);
  }

  function createAndEndowD(uint arg, uint amount) public payable{
    D newD = (new D).value(amount)(arg);
  }
}
