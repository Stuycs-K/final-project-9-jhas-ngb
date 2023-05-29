public class TNT extends Obstacle{
  private boolean destroyed;
  
  public TNT(PVector position){
    super(positon, false, "Main\Sprites\Obstacles\TNT.png");
    destroyed == false;
  }
  
  public void explode(){
    destroyed == false;
    
  }
}
