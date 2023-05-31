public class Room{
 private PImage sprite;
 private ArrayList<Integer>doors;
 
 // The 4 bound variables describe the cordinates of the walls of the room
 private final int LEFT_BOUND = width / 2 - 500;
 private final int UP_BOUND = height / 2 - 400;
 private final int RIGHT_BOUND = width / 2 + 500;
 private final int DOWN_BOUND = height / 2 + 400;
 
 // makeDoors()
 // used by normal room
 public Room(){
   sprite = loadImage ("./Sprites/Room.png");
 }
 
 //four if statements, checks if player enters door && if door exists within doors arraylist (using indexOf ?), move CurrentRoom index appropriately using the setCurrent() in global var map
 // FOR THE MVP, don't worry about some doors not linking to rooms, we just need a working product
 public void detectDoor(){
   
 }
 
 // randomly make doors (have 4 doors generate, if duplicate, then don't add to doors arraylist)
 public void makeDoors(){
   
 }
 
 // draws the doors using the doors arraylist
 public void drawDoors(){
   
 }
 
 // detectDoor(), draw backdrop, draw doors
 public void subDraw (){
   
 }
 
}
