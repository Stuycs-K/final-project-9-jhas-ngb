public class NormalRoom extends Room{
  private Enemies type1;
  private Enemies type2;
  public ArrayList<Enemies> enemies; //this needs to be edited by Bullet and Player class
  private ArrayList<Obstacle> obstacles;
  
  public NormalRoom (){
    // initializes type1 and type2, creates those enemy on the Room grid based on the type number of the Enemy
    // the grid will have 0 (empty space), 1(enemy type 1), 2 (enemy type 2), and 3 (obstacle)
    // only two-three 1s and two-three 2s in the grid placed randomly around the center
  }
  
  public void draw(){
    //if (loaded is false), if so, turn loaded to true and draw the room backdrop
    // calls the draw functions of enemies
    // calls the draw function of obstacles
    // calls the draw function of doors
  }
  
}
