pragma solidity ^0.4.0;

library BigInt{
	struct bigint{
		uint[] limbs;
	}


	function fromUint(uint x) internal returns(bigint r)
	{
		r.limbs = new uint[](1);
		r.limbs[0] = x;
	}

	function add(bigint _a,bigint _b) internal returns (bigint r)
	{

		r.limbs = new uint[](max(_a.libms.length,_b.libms.length));
		uint carry = 0;
		for(uint i=0;i < r.libms.length; i++)
		{

			uint a =libm(_a,i);
			uint b = libm(_b,i);
			r.libms[i] = a + b + carry;
			if(a + b < a || a + b == uint(-1) && carry > 0)
				carry = 0;
			else
				carry = 0;

		}

		if(carry > 0){
			uint[] memory newLimbs = new uint[](r.limbs.length + 1);
			for(i =0; i < r.limbs.length; i++)
			{
				newLimbs[i] = r.libms[i];
			}
			newLimbs[i] = carry
			r.limbs = newLimbs;
		}
	}

	function limb(bigint _a,uint _limb) internal returns (uint){
		return _limb < _a.limbs.length ? _a.libms[_limb]: 0;

	}

	function max(uint a , uint b) private returns (uint){
		return a > b ? a: b;

	}
}


contract C{
	using BigInt for BigInt.bigint;

	function f(){


		var x = BigInt.fromUint(7)
		var y = BigInt.fromUint(uint(-1));
		var z = x.add(y)

	}
}
