pragma solidity >=0.4.0 <=0.6.0;
  
contract PurchaseOrder{
   uint256 quantity; //state variable
    
   /*Called with the contract is deployed and initializes the value*/
   constructor() public{
        quantity = 100;
    }
     
    // Get Function
    function get_quantity() public view returns(uint256){
        return quantity;
    }
  
    // Set Function
    function update_quantity(uint256 value) public {
        quantity = quantity + value;
    }
}
