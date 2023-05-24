public class TNT extends Obstacle{
  private boolean destroyed;
  
  public TNT(PVector position){
    super(positon);
    destroyed == false;
    //initializes TNT's position, collision, and set destroyed to false
  }
  
  public void explode(){
    destroyed == false;
    
  }
}
