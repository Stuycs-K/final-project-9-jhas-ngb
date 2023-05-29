public class Rocks extends Obstacle{
  private boolean destroyed;
  
  public Rocks(PVector position){
    super(position, true, "Main\Sprites\Obstacles\Rocks.png"); // super constructer arguments (position, collision, path of image)
    destroyed == false;
 
  }
  
  public void break(){
    //sets destroyed to true and removes image of rock from screen
    destroyed = true;
  }
  
  
}
