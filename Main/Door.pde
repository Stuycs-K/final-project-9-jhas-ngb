public class Door{
  private PVector position;
  private PVector linkedDoor;
  private char direction;
  private Room currentRoom;
  
   public Door (char direction, Room currentRoom){
     // creates the position of the door using the direction and also initializes linkedDoor using direction by getting nextdoor Room and getting the door of the opposite direction
     // initialize this.direction
     // this.currentRoom is initalized
   }
   
   public void entered (){
     // determines if the player is inside of the door, if yes, then call the moveRoom method in map and give this.direction as a parameter
   }
   
   public getPosition(){
     return position;
   }
  
}
