
// THIS ENTIRE CLASS IS NOT IN THE MVP
public class TNT extends Obstacle{
  private boolean destroyed;
  
  public TNT(PVector position){
    super(position, true, "./Sprites/Obstacles/TNT.png");
    destroyed = false;
  }
  
  public void explode(){
    destroyed = false;
    
  }
}
