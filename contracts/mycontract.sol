pragma solidity ^0.5.0;

contract MyContract {
    address payable public creator;
    address payable  public owner;
    uint public unlockDate;
    uint public createdAt;
    mapping(address => uint256) public balanceOf;
    enum State{
        start, in_progress,complete 
    }
    State public state;
    
    modifier instate(State expected_state){
        require(state == expected_state);
        _;
    }
    
    modifier onlyCreater(){
        require(msg.sender == creator);
        _;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    modifier onlyUnlock(){
        require(now >= unlockDate);
        _;
    }
    
    constructor() payable public{
        creator = msg.sender;
        state = State.start;
    }
    
    function dispnse(address payable _owner)  onlyCreater instate(State.start) payable public{
        owner = _owner;
        unlockDate = now + 30 days;
        state = State.in_progress;
        
    }
    function getBalance() view public returns(uint256){
        return address(this).balance;
    }
    
    function withdraw() onlyOwner onlyUnlock instate(State.in_progress) payable public returns(bool){
        uint256 i=0;
        uint amount =  address(this).balance;
        uint myamount=0;
        for(i; i<12; i++){
            myamount = myamount + (amount/12);
            amount = amount - (amount /12);
        }
        if(i==12){
            state = State.complete;
            owner.transfer(myamount);
            creator.transfer(amount);
            return true;
        }
        return false;
        }
    }
    