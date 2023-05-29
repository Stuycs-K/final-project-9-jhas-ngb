public class TNT extends Obstacle{
  private boolean destroyed;
  
  public TNT(PVector position){
    super(positon, true, "Main\Sprites\Obstacles\TNT.png"); // super constructer arguments (position, collision, path of image) 
    destroyed == false;
  }
  
  public void explode(){
    destroyed == false;
    
  }
}
