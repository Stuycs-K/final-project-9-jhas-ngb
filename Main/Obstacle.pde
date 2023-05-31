public class Obstacle{
  private boolean collision;
  private PVector position;
  private PImage sprite;
  
  // used by subclasses to make obstacles
  public Obstacle(PVector position, boolean collision, String path){
    sprite = loadImage(path);
    this.position = position;
    this.collision = collision;
  }
  
  // if the abs value difference in x values of the player.position and this.position gets small enough, then move the player position back to the border of the obstacle, same for y values
  // NOTE: This entire function ONLY RUNS IF collision == true
  public void obstruct(){

  }
  
  // obstruct, THEN draw sprite
  public void subDraw(){
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2); // look at how I did this to draw the PImage
  }
  
  // used by rocks, spikes, tnt
  public void setSprite (String newSprite){
   sprite = loadImage(newSprite); 
  }
}
