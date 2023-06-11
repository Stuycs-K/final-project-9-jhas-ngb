public class Bullet{
  private boolean die;
  private PVector velocity;
  private PVector position;
  private int damage;
  private PImage sprite;
  private int lifetime = 120;
  private static final int firingPower = 4;
 
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  
  // used by Player
  public Bullet(PVector playerVelocity, PVector playerPosition){
    sprite = loadImage("./Sprites/Tear.png");
    this.die = false;
    this.position = playerPosition.copy();
    // makes a new velocity with vel and direction (determined by inputs[3-7]) and increases magnitude by firingPower
    velocity = new PVector (0,0);
    if (inputs[D_LEFT]){
      velocity.x -= firingPower;
    }
    if (inputs[D_UP]){
      velocity.y -= firingPower;
    }
    if (inputs[D_RIGHT]){
      velocity.x += firingPower;
    }
    if (inputs[D_DOWN]){
      velocity.y += firingPower;
    }
    this.velocity.add(playerVelocity.div(2));    
    this.damage = 2;
    position.add(velocity);
    // initialize damage to 2
  }
  
  // if position.dist(enemy.position) < range, THEN hurt enemy AND die = true
  public void hurt(){
    ArrayList<Enemies> enemies = map.getCurrent().getEnemies();
    for (int i = 0; i < enemies.size(); i++){
      if (position.dist(enemies.get(i).getPosition()) < sprite.width / 2){
        enemies.get(i).setHealth(enemies.get(i).getHealth() - damage);
        die = true;
        break;
      }
    }
    
  }
  
  // if bullet is out of bounds, set die = true
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
    lifetime--;
    if (lifetime <= 0){
      die = true;
    }
  }
  
  public boolean getDie (){
    return die;
  }
  
}
