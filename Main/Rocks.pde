public class Rocks extends Obstacle{
  private boolean destroyed;
  
  public Rocks(PVector position){
    super(position, false, "Main\Sprites\Obstacles\Rocks.png");
    destroyed == false;
 
  }
  
  public void break(){
    //sets destroyed to true and removes image of rock from screen
    destroyed == true;
  }
  
  
}
