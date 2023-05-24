public class Bullet{
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private char origin;
  private static final int firingPower = 10;
  
  public Bullet(PVector playerV, int damage, char c){
    // makes a velocity with playerV and increases magnitude by firingPower
    // initialize damage to 2 if player, 1 if enemy (because player is weak af)
    // sets origin to 'p' if from player, 'e' if from enemy
  }
  
  public void hurt(String origin){
    // if bullet origin is player, hurt if on enemy
    // if bullet origin is enemy, hurt if on player
    // make die = true if bullet hits either
  }
  
  public void move (){
    //self explanatory
    // make sure the bullet dies if it hits enemy or wall
    // make die = true if moves into a wall
    
  }
  
  public void draw(){
    // draws bullet
  }
  
  public boolean getDie (){
    return this.die;
  }
  
}
