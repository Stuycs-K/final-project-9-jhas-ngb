public class Enemies {
  int health;
  int speed;
  boolean explosive;
  PVector position;
  int timer;
  
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
}
