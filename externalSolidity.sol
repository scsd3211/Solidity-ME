pragma solidity ^0.4.0;

contract Infofeed{
    function info() public payable returns(uint ret) {
      return 42;
    }
}

contract Consumer{
  Infofeed feed;
  function setFeed(address addr) public {
    feed = Infofeed(addr);
  }

  function callFeed() public {
    feed.info.value(10).gas(800)();
    
  }
}
