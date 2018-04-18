pragma solidity ^0.4.0

contract C{
	function foo() returns(uint){
	//baz is implicity initialized as 0

	uint bar = 5;

	if(true){
		bar += baz;
	}else{
		uint baz = 10;
	}
	return bar;
	}


}
