public class Door{
  private PVector position;
  private PVector teleport;
  private char direction;
  private Room currentRoom;
  
   public Door (char direction, Room currentRoom){
     // creates the position of the door using the direction
     // initializes teleport location based on direction
     // initialize this.direction
     // this.currentRoom is initalized
   }
   
   public void entered (){
     // determines if the player is inside of the door, if yes, then call the moveRoom method in map and give this.direction as a parameter
   }
   
   public getPosition(){
     return position;
   }
   
   public void draw(){
     //draws rge door and the entered function
   }
  
}
