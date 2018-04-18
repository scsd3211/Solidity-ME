pragma solidity ^0.4.21;

contract BlindAution{
    struct Bid{
        bytes32 blindedBid;
        uint   deposit;
    }

    address public beneficiary;
    uint public biddingEnd;
    uint public revealEnd;
    bool public ended;

    mapping (address => Bid[]) public bids;

    address public highestBidder;
    uint public highestBid;

    mapping (address => uint) pendingReturns;

    event AuctionEnded(address winner,uint highestBid);

    modifier onlyBefore(uint _time) {
        require( now < _time);
        _;
        }
    modifier onlyAfter(uint _time){
        require( now > _time);
        _;
    }

    

}