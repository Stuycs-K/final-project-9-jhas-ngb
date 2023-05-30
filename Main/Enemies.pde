public class Enemies{
  private int health;
  private int speed;
  private boolean explosive;
  private PImage sprite;
  private PVector position;
  private PVector velocity;
 
  private Enemies(int health, int speed, PVector position, String path){
    sprite = loadImage(path);
    this.health = health;
    this.speed = speed; //<>//
    this.position = position;
  }
  
  private Enemies(){ // base enemy constructor
    Enemies(5, 2, new PVector (width/2, height/2), "Main\Sprites\Enemies\Fly.png");
  }
  
  /**
  *Enemy explosions do a full heart of damage to player.
  */
  public void enemyExplosion(){
   if(explosive && health <= 0 && ){
     player.setHealth() = player.getHealth()-2;
  }
    else{
      player.setHealth() = 0;
    }
  }
  
  public int getHealth(){
    return health;
  }
  
  public void setHealth(int newHealth){
    health = newHealth;
  }
  
  public void subDraw(){
    // draws enemy
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
  }
  
}
