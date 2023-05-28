public class Bullet{
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private char origin;
  private PImage sprite;
  private static final int firingPower = 10;
  
  public Bullet(PVector vel, int damage, char origin, char direction){
    sprite = loadImage("Main\Sprites\Tear.png");
    // if from player:
      // makes a new velocity with vel and direction (determined by inputs[3-7]) and increases magnitude by firingPower
      //
    // initialize damage to 2 if player, 1 if enemy (because player is weak af)
    // sets this.origin to 'p' if from player, 'e' if from enemy
  }
  
  public void hurt(String origin){
    // if bullet origin is player, hurt if on enemy
    // if bullet origin is enemy, hurt if on player
    // make die = true if bullet hits either
  }
  
  public void move (){
    //self explanatory
    // make sure the bullet dies if it hits enemy or wall
    // use dist function to inflict damage to any enemy within range, NormalRoom enemies arraylist is PUBLIC
    // make die = true if moves into a wall
    
  }
  
  public void subDraw(){
    // draws bullet
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
    //calls the die function
  }
  
  public void getDie (){
    return die;
  }
  
}
