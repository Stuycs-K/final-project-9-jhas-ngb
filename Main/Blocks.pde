public class Blocks extends Obstacle{
  
  public Blocks(PVector position){
    //super(position)
    //call super to initialize
  }
  
  //tells if in contact with player because then player can't go onto that position
  public boolean touch(Player player){
    //return(Player.position.x == this.position.x && same for y)
    //returns true if player is in the same position as the block
    //returns false if otherwise
  }
}
