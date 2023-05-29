public class Blocks extends Obstacle{
  
  public Blocks(PVector position){
    super(position, true, "Main\Sprites\Obstacles\Blocks.png"); // super constructer arguments (position, collision, path of image)
  }
  
  //tells if in contact with player because then player can't go onto that position
  public boolean touch(Player player){
    return(Player.position.x == this.position.x && Player.position.y == this.position.y);
  }
}
