public class EnemyBullet {
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private PImage sprite;
 
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  
  // used by Player
  public EnemyBullet(PVector inputVelocity, PVector enemyPosition){
    sprite = loadImage("./Sprites/enemyTear.png");
    this.die = false;
    this.position = enemyPosition.copy();
    // makes a new velocity with vel and direction (determined by inputs[3-7]) and increases magnitude by firingPower
    velocity = inputVelocity.copy();
    // initialize damage to 1
  }
  
  // if position.dist(enemy.position) < range, THEN hurt player AND die = true
  public void hurt(){
    if (position.dist(player.getPosition()) < sprite.width / 2){
      player.setHealth(player.getHealth() - damage);
      die = true;
    }
    
  }
  
  // if enemy bullet is out of bounds, set die = true
  public void applyVelocity (){
    position.add(velocity);
    if (position.x < LEFT_BOUND || position.y < UP_BOUND || position.x > RIGHT_BOUND || position.y > DOWN_BOUND){
      die = true;
    }
  }
  
  //move and draw sprite
  public void subDraw(){
    image(sprite, position.x - sprite.width / 2, position.y - sprite.height / 2);
    applyVelocity();
    hurt();
  }
  
  public boolean getDie (){
    return die;
  }
}
