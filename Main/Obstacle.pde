public class Obstacle{
  private boolean collision;
  private PVector position; // This references the location within the ROOM GRID, not the screen
  private PImage sprite;
  
  public Obstacle(PVector position, boolean collision, String path){
    sprite = loadImage(path);
    this.position = position;
    this.collision = collision;
   // initializes collision = false and position
  
  }
  
  //check edge cases for this
  public void obstruct(Player player){
    if(player.position.x + 1 == this.position.x || player.position.x - 1 == this.position.x || player.position.y + 1 == this.position.y || player.position.y - 1 == this.position.y){
      Pvector change = new PVector(position.x-1);
      player.setPosition(change);
    }
    // keep the player from going inside of the obstacle

  }
  
  public void subDraw(){
    // draw the obstacle
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
  }
  
  public void setSprite (String newSprite){
   sprite = newSprite; 
  }
}
