public class Bullet{
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private char origin;
  private PImage sprite;
  private static final int firingPower = 2;
  
  // used by Player
  public Bullet(PVector playerVelocity, PVector playerPosition, char origin){
    sprite = loadImage("./Sprites/Tear.png");
    // if from player:
    if (origin == 'p'){
      this.origin = 'p';
      // makes a new velocity with vel and direction (determined by inputs[3-7]) and increases magnitude by firingPower
      PVector fired = new PVector (0,0);
      if (inputs[D_LEFT]){
        fired = new PVector ();
      }
      if (inputs[D_UP]){
        fired = new PVector ();
      }
      if (inputs[D_RIGHT]){
        fired = new PVector ();
      }
      if (inputs[D_DOWN]){
        fired = new PVector ();
      }
      this.velocity = PVector.add(playerVelocity, fired);
      this.position = playerPosition;
      this.damage = 2;
    }else{
      this.origin = 'e';
      this.damage = 1;
    }
    this.die = false;
    // initialize damage to 2
    // sets this.origin to 'p' if from player, 'e' if from enemy
  }
  
  // if bullet origin is player && position.dist(enemy.position) < range, THEN hurt enemy AND die = true
  public void hurt(String origin){
    
    
  }
  
  // if player is out of bounds, set die = true
  public void applyVelocity (){
    
  }
  
  //move and draw sprite
  public void subDraw(){
    
  }
  
  public boolean getDie (){
    return die;
  }
  
}
