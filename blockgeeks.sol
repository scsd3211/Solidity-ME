pragma solidity ^0.4.0;

contract BasicIterator{
	address creator;//reserve one "address "- type spot
	uint8[10] integers; //reserve a chunk
	function BasicIterator() public 
	{
		creator = msg.sender;
		uint8 x =0;
		//section1 "Assing  values"
		while(x < integers.length)
		{

			integers[x] = x;
			x++;
		}

	}
	function getSum() constant returns (uint){

		uint8 sum = 0;
		uint8 x =0;
		//section2 Adding the integers in an array
		while(x < integers.length)
		{
			sum = sum  + integers[x];
			x++;
		}

		return sum;
	}
	//Sections 3 :Killing the contract
	function kill(){
		if(msg.sender == creator)
		{
			suicide(creator);
		}
	}
}
