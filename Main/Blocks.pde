public class Blocks extends Obstacle{
  
  // used by normal room to make Blocks
  // collision = true
  public Blocks(PVector position){
    super(position, true, "./Sprites/Obstacles/Block.png");
  }
}
