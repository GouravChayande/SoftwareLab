pragma solidity >=0.4.0 <=0.6.0;
  
contract CountEg{
   uint256 counter; //state variable
    
   /*Called with the contract is deployed and initializes the value*/
   constructor() public{
        counter = 0;
    }
     
    // Get Function
    function get_counter() public view returns(uint256){
        return counter;
    }
  
    // Set Function
    function update_counter() public {
        counter++;
    }
}
