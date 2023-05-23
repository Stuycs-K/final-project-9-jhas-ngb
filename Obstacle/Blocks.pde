public class Blocks extends Obstacle{
  
  public Blocks(){
    //call super to initialize
  }
  
  //tells if in contact with player because then player can't go onto that position
  public boolean touch(Player player){
    //returns true if player is in the same position as the block
    //returns false if otherwise
  }
}
