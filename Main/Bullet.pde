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
  public void hurt(){
    if (origin == 'p'){
      ArrayList<Enemies> enemies = map.getCurrent().getEnemies();
      int i = 0;
      while (position.dist(enemies.get(i).getPosition()) < 20 || !(i < enemies.size())){ // almost 100% sure this conditional is wrong
        enemies.get(i).setHealth(enemies.get(i).getHealth() - 1);
        die = true;
      }
    }
    
  }
  
  // if player is out of bounds, set die = true
  public void applyVelocity (){
    position.add(velocity);
    if (position.x < LEFT_BOUND || position.y < UP_BOUND || position.x < RIGHT_BOUND || position.y > DOWN_BOUND){
      die = true;
    }
  }
  
  //move and draw sprite
  public void subDraw(){
    applyVelocity();
    hurt();
    image(sprite, position.x - sprite.width / 2, position.y - sprite.height / 2);
  }
  
  public boolean getDie (){
    return die;
  }
  
}
