public class Fly extends Enemies{
  private int timer;
  private int rate;
  
  // used by the Normal Room class to make enemies
  // 3 health, 5 speed, (position), sprite, timer = 0, and rate = 5
  public Fly(PVector position){
    super(3, 5, position, "Main\Sprites\Enemies\Fly.png");
  }
  
  // randomly chooses between the 4 directions (North, West,...) and sets velocity
  // KEEP IN MIND TO USE THE SPEED VARIABLE TO SET VELOCITY
  public int changeDirection(){
    
  }
  
  // if an enemy runs into a wall, negate its velocity.x or velocity.y appropriately
  public void turnAround(){
    
  }
  
  // if timer <= 0, change direction and reset timer to rate, THEN super.subdraw
  public void subDraw(){
    
  }
}
