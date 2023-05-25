public class Obstacle{
  private boolean collision;
  private PVector position; // This references the location within the ROOM GRID, not the screen
  private boolean loaded;
  
  public Obstacle(PVector position){
    this.position = position;
    collision = false;
   // initializes collision and position
  
  }
  
  public void obstruct(){
    //
  }
  
  public void draw(){
    // if (loaded is false), make loaded = true and draw the obstacle aka only draws it once per load to reduce runtime
  }
}
