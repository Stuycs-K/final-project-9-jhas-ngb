public class Room{
 private boolean loaded;
 private PVector position;
 private int config;
 private Door doorL;
 private Door doorU;
 private Door doorR;
 private Door doorD;
 private PImage sprite;
 // The 4 bound variables describe the cordinates of the walls of the room
 private final LEFT_BOUND = ;
 private final UP_BOUND = ;
 private final RIGHT_BOUND = ;
 private final DOWN_BOUND = ;
 
 
 public Room(){
   sprite = loadImage ( place holder text ); // I don't have a sprite for this yet
   
   // initializes the doors based on the config (some can be null)
   // initializes position relative to the top left corner of the screen and size of screen
   // NOTE: the size of the grid will be determined the width and height of the screen
   // the grid will have 0 (empty space) everywhere
   // initializes loaded to false
 }
 
 public void setLoaded(boolean b){
   loaded = b;
 }
 
 public boolean getLoaded(){
   return loaded;
 }
 
 public subDraw (){
   // draw doors
   doorL.subDraw();
   doorU.subDraw();
   doorR.subDraw();
   doorD.subDraw();
   // draw backdrop
   image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
 }
 
}
