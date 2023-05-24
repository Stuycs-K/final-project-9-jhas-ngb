public class Enemies{
  private int health;
  private int speed;
  private boolean explosive;
  private PVector position; // This references the location within the ROOM GRID, not the screen
  private int timer;
  
  public Enemies(int health, int speed, PVector position, int timer){
    this.health = health;
    this.speed = speed;
    this.position = position;
    this.timer = timer;
  }
  /**
  *Enemy explosions do a full heart of damage to player.
  */
  public void enemyExplosion(Player player){
   
  }
  
  public void draw(){
    // draws enemy
  }
  
}
