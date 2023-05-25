public class Room{
 private boolean loaded;
 private PVector position;
 private int config;
 private int[][] grid;
 private Door doorL;
 private Door doorU;
 private Door doorR;
 private Door doorD;
 
 public Room(){
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
 
}
