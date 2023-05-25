public class Enemies{
  private int health;
  private int speed;
  private boolean explosive;
  private PVector position; // This references the location within the ROOM GRID, not the screen
 
  private Enemies(int health, int speed, PVector position){
    this.health = health;
    this.speed = speed;
    this.position = position; //<>//
    
  }
  
  /**
  *Enemy explosions do a full heart of damage to player.
  */
  public void enemyExplosion(Player player){
   if(player.getHealth() >= 2){
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
  
  public boolean within (PVector other){
    // calculates distance between position and other position
    // return distance < radius
  }
  
  public void draw(){
    // draws enemy
  }
  
}
