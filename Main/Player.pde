public class Player{
  private PVector position;
  private PVector velocity;
  private double speed;
  private int health;
  private int fireRate;
  private ArrayList<Bullet> bullets;
  private int timer;
  private PImage sprite;
  
  // PLAYER POSSIBLY NEEDS A DIE VARIABLE AS WELL IN ORDER TO END THE GAME
 
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  public Player (){
    sprite = loadImage ("./Sprites/Player/Isaac.png");
    position = new PVector (width / 2, height / 2);
    velocity = new PVector (0,0);
    speed = 4.5;
    health = 6;
    fireRate = 30; // 30 frame delay between shooting
    bullets = new ArrayList <>();
    timer = 0;
  }
  
  // creates a new bullet in the bullets arraylist
  public void shoot(){
    bullets.add(new Bullet (velocity, position, 'p'));
  }
  
  // calls all other move functions
  private void move (){
    if (inputs[KEY_LEFT]){
      moveL();
    }
    if (inputs[KEY_UP]){
      moveU();
    }
    if (inputs[KEY_RIGHT]){
      moveR();
    }
    if (inputs[KEY_DOWN]){
      moveD();
    }
  }
  
  // keeps player from accelerating
  private void slowDown (){
    velocity.set(0,0);
  }
  
  // applys velocity to position
  private void applyVelocity (){
    position.add(velocity);
    if (position.x < LEFT_BOUND){
      position.x = LEFT_BOUND;
    }
    if (position.x > RIGHT_BOUND){
      position.x = RIGHT_BOUND;
    }
    if (position.y < UP_BOUND){
      position.y = UP_BOUND;
    }
    if (position.y > DOWN_BOUND){
      position.y = DOWN_BOUND;
    }
    
  }
  
  //change velocity.x by -speed
  private void moveL (){
    velocity.x -= speed;
  }
  
  //change velocity.y by -speed
  private void moveU (){
    velocity.y -= speed;
  }
  
  //change velocity.x by speed
  private void moveR (){
    velocity.x += speed;
  }
  
  //change velocity.y by speed
  private void moveD (){
    velocity.y += speed;
  }
  
  // draws sprite
  // check for dead bullets using getDie()
  // call the subdraw function for all bullets
  // move()
  // if timer <= 0 && shoot input is pressed, THEN shoot and reset timer to firerate
  public void subDraw(){
    move();
    applyVelocity();
    if (inputs[SHOOT] && timer <= 0){
      shoot();
      timer = fireRate;
    }
    timer--;
    for (int i = 0; i < bullets.size(); i++){
      bullets.get(i).subDraw();
      if (bullets.get(i).getDie()){
        bullets.remove(i);
      }
    }
    slowDown();
    image(sprite, position.x - sprite.width / 2, position.y - sprite.height / 2);
  }
  
  //used by enemies
  public int getHealth(){
    return health;
  }
  
  //used by enemies
  public void setHealth(int change){
    health = change;
  }
  
  //used by enemies
  //used by obstacles
  public PVector getPosition (){
    return position;
  }
}
