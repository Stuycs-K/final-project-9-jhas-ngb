public class Enemies{
  private int health;
  private int speed;
  private boolean explosive;
  private PVector position;
  private int timer;
  
  private Enemies(int health, int speed, PVector position){
    this.health = health;
    this.speed = speed;
    this.position = position;
    this.timer = 1;
  }
  
  /**
  *Enemy explosions do a full heart of damage to player.
  */
  public void enemyExplosion(Player player){
   
  }
}
