public class Door{
  private PVector position;
  private PVector teleport;
  private char direction;
  private Room currentRoom;
  private PImage sprite;
  
   public Door (char direction, Room currentRoom){
     sprite = loadImage ("Main\Sprites\Door.png");
     // creates the position of the door using the direction
     if (direction == 'U'){
       position = new PVector (width / 2, 20);
     }
     if (direction == 'D'){
       position = new PVector (width / 2, height - 20);
     }
     if (direction == 'L'){
       position = new PVector (50, height / 2);
     }
     if (direction == 'R'){
       position = new PVector (width - 50, height / 2);
     }
     // initializes teleport location based on direction
     if (direction == 'D'){
       teleport = new PVector (width / 2, 40);
     }
     if (direction == 'U'){
       teleport = new PVector (width / 2, height - 40);
     }
     if (direction == 'R'){
       teleport = new PVector (70, height / 2);
     }
     if (direction == 'L'){
       teleport = new PVector (width - 70, height / 2);
     }
     // initialize this.direction
     this.direction = direction;
     // this.currentRoom is initalized
     this.currentRoom = currentRoom;
   }
   
   public void entered (){
     // determines if the player is inside of the door, if yes, then call the moveRoom method in map and give this.direction as a parameter
   }
   
   public getPosition(){
     return position;
   }
   
   public void subDraw(){
     //draws the door and the entered function
     image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
   }
  
}
