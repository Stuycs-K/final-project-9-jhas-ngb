public class Bullet{
  
  private PVector velocity;
  private PVector position;
  private int damage;
  private static final int firingPower = 10;
  
  public Bullet(PVector playerV, int damage){
    // makes a velocity with playerV + firingPower
    // initialize damage
  }
  
  public void hurt(String origin){
    // if bullet origin is player, hurt if on enemy
    // if bullet origin is enemy, hurt if on player
  }
  
  public void move (){
    //self explanatory
    // make sure the bullet dies if it hits enemy or wall
  }
  
}
