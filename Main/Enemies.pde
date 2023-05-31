public class Enemies{
  private int health;
  private int speed;
  private boolean explosive;
  private PImage sprite;
  private PVector position;
  private PVector velocity;
  private boolean die;
 
 // constructor is used by other enemies
  private Enemies(int health, int speed, PVector position, String path){
    sprite = loadImage(path);
    this.health = health;
    this.speed = speed; //<>// //<>//
    this.position = position;
  }
  
  // NOT IN MVP
  // if enemy is dead (use die variable) and explosive == true, THEN drop an instant exploding bomb
  public void enemyExplosion(){
    
  }
  
  // apply velocity to position
  public void applyVelocity(){
    
  }
  
  // turn velocity to zero
  public void resetVelocity(){
    
  }
  
  // used by bullets
  public int getHealth(){
    return health;
  }
  
  // used by bullets
  public void setHealth(int newHealth){
    health = newHealth;
    if (health <= 0){
      die = true;
    }
  }
  
  // apply Velocity, Reset Velocity, THEN draw the sprite
  //(NOTE: The image function to draw PImages uses position as the top left corner of the image. Read Processing image() documentation for more info)
  public void subDraw(){
    
  }
  
}
