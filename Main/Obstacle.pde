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
    if(collision == true){

      // Right side
      if (((player.getPosition().x - this.position.x <= 5 + sprite.width / 2) && (player.getPosition().x - this.position.x > 0.6 * sprite.width / 2)) && (abs(player.getPosition().y - this.position.y) < sprite.height / 2 - player.getSpeed() + 1)){
        player.getPosition().x = position.x + sprite.width / 2 + 5;
      }
      
      // Left side
      if (((this.position.x - player.getPosition().x <= 5 + sprite.width / 2) && (this.position.x - player.getPosition().x > 0.6 * sprite.width / 2)) && (abs(player.getPosition().y - this.position.y) < sprite.height / 2 - player.getSpeed() + 1)){
        player.getPosition().x = position.x - sprite.width / 2 - 5;
      }
      
      // Bottom side
      if (((player.getPosition().y - this.position.y <= sprite.height / 2) && (player.getPosition().y - this.position.y > 0.6 * sprite.height / 2)) && (abs(player.getPosition().x - this.position.x) < sprite.width / 2 - player.getSpeed() + 1)){
        player.getPosition().y = position.y + sprite.height / 2;
      }
      
      // Top side
      if (((this.position.y - player.getPosition().y <= 34 + sprite.height / 2) && (this.position.y - player.getPosition().y > 0.6 * sprite.height / 2)) && (abs(player.getPosition().x - this.position.x) < sprite.width / 2 - player.getSpeed() + 1)){
        player.getPosition().y = position.y - sprite.height / 2 - 34;
      }
      
    }
  }
  
  // obstruct, THEN draw sprite
  public void subDraw(){
    obstruct();
    image(sprite, position.x - sprite.width/2, position.y - sprite.width/2); // look at how I did this to draw the PImage
  }
  
  // used by rocks, spikes, tnt
  public void setSprite(String newSprite){
   sprite = loadImage(newSprite); 
  }
  
  public PImage getSprite(){
   return sprite;
  }
  
  public void setCollision(){
    collision = false;
  }
  
  // used by subclasses
  public PVector getPosition (){
    return position;
  }
  
}
