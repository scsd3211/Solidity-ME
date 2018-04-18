pragma solidity ^0.4.21;


contract CrowdFunding{
  struct Funder{
    address addr;
    uint amount;
  }

  struct Capaign{
    address beneficiary;
    uint goal;
    uint amount;
    uint fundernum;
    mapping(uint => Funder) funders;
  }

  uint compaingnID;

  mapping(uint => Campaign) campaigns;

  function candidate(address beneficiary ,uint goal) returns (uint compaingnID){
    //initialize
    campaigns[compaingnID++] = Campaign(beneficiary,goal,0,0);

  }

  function vote(uint compaingnID) payable{
    Campaign c = campaigns[compaingnID];
    c.funders[c.fundernum++] = Funder({addr:msg.sender,amount:msg.value});

    c.amount += msg.value;
  }


  function check(uint compaingId) returns (bool){
    Campaign c = campaigns[compaingId];

    if(c.amount < c.goal){

      return false;
    }

    uint amount = c.amount;

    c.amount = 0;

    if(!c.beneficiary.send(amount)){

      throw;
    }

    return true;

  }

}
