pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Event.sol";

contract TestEvent {
  Event adoption = Event(DeployedAddresses.Event());


function testUserCanAdoptPet() {
  uint returnedId = adoption.createEvent("new event1",5,100);

  uint expected = 1;

  Assert.equal(returnedId, expected, "Adoption of pet ID 1 should be recorded.");
}
function testUserCanJoinPet() {
  uint returnedId = adoption.joinEvent(1);

  uint expected = 1;

  Assert.equal(returnedId, expected, "Adoption of pet ID 1 should be recorded.");
}

}