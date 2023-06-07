public class Enemies{
  private int health;
  private int speed;
  private boolean explosive; // NOT IN MVP
  private PImage sprite;
  private PVector position;
  private PVector velocity;
  private boolean die;
 
 // constructor is used by other enemies
  private Enemies(int health, int speed, PVector position, String path){
    sprite = loadImage(path);
    this.health = health;
    this.speed = speed; //<>// //<>// //<>// //<>//
    this.position = position;
    this.velocity = new PVector(0,0);
    die = false;
  }
  
  // NOT IN MVP
  // if enemy is dead (use die variable) and explosive == true, THEN drop an instant exploding bomb
  public void enemyExplosion(){
    //if(this.die == true && explosive == true){
    //}
  }
  
  // apply velocity to position
  public void applyVelocity(){
    this.position.add(velocity);
  }
  
  // turn velocity to zero
  public void resetVelocity(){
    velocity.set(0,0);
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
  
  //used by Bullet in hurt()
  public PVector getPosition (){
    return position;
  }
  
  //used by sub classes
  public PVector getVelocity (){
    return velocity;
  }
  
  //used by sub classes
  public int getSpeed(){
    return speed;
  }
  
  // used by Normal Room
  public boolean getDie(){
    return die;
  }
  
  // apply Velocity, Reset Velocity, THEN draw the sprite
  //(NOTE: The image function to draw PImages uses position as the top left corner of the image. Read Processing image() documentation for more info)
  public void subDraw(){
    applyVelocity();
    resetVelocity();
    image(sprite, this.position.x - sprite.width/2, this.position.y - sprite.height/2);
    if (health <= 0){
      die = true;
    }
  }
  
}
