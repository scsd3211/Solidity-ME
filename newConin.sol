pragma solidity ^0.4.0;


contract Coinme{
    address Creatorme;
    mapping(address => uint) balances;

    function Coinme()
    {
      Creatorme = msg.sender;
    }


    event SentEvent(address from ,address to ,uint amount);

    function Cteate(address WhoGet,uint HowMany){

      balances[WhoGet] += HowMany;
    }

    function Get(address WhoesCount) returns(uint){

      return balances[WhoesCount];
    }

    function Send(address from,address to,uint HowMany) returns(bool){
      if(balances[from] >=  HowMany)
      {
        balances[from] -= HowMany;
        balances[to]   += HowMany;

        SentEvent(from ,to ,HowMany);
        return true;
      }
      else
      {
        return false;
      }
    }

    function  Whoescontract() returns (address Ownner){
      Ownner  = Creatorme;
    }

}
