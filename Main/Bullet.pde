public class Bullet{
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private char origin;
  private PImage sprite;
  private static final int firingPower = 2;
  
  public Bullet(PVector vel, PVector position, char origin){
    sprite = loadImage("Main\Sprites\Tear.png");
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
      this.velocity = PVector.add(vel, fired);
      this.position = position;
      this.damage = 2;
    }else{
      this.origin = 'e';
      this.damage = 1;
    }
    this.die = false;
    // initialize damage to 2 if player, 1 if enemy (because player is weak af)
    // sets this.origin to 'p' if from player, 'e' if from enemy
  }
  
  public void hurt(String origin){
    // if bullet origin is player, hurt if on enemy
    // if bullet origin is enemy, hurt if on player
    // make die = true if bullet hits either
    if (origin == 'p'){
      for (int i = 0; i < map.getCurrent().
      if (this.position.dist(player.getPosition()) < 30){
        
        die = true;
      }
    }else{
      if (this.position.dist(player.getPosition()) < 30){
        
        die = true;
      }
    }
  }
  
  public void move (){
    //self explanatory
    // make sure the bullet dies if it hits enemy or wall
    // use dist function to inflict damage to any enemy within range, NormalRoom enemies arraylist is PUBLIC
    // make die = true if moves into a wall
    
  }
  
  public void subDraw(){
    // draws bullet
    move();
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
  }
  
  public void getDie (){
    return die;
  }
  
}
