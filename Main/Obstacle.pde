public class Obstacle{
  private boolean collision;
  private PVector position; // This references the location within the ROOM GRID, not the screen
  
  public Obstacle(PVector position){
    this.position = position;
    collision = false;
   // initializes collision = false and position
  
  }
  
  public void obstruct(){
    // keep the player from going inside of the obstacle
  }
  
  public void subDraw(){
    // draw the obstacle
  }
}
