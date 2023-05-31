public class Player{
  private PVector position;
  private PVector velocity;
  private int speed;
  private int health;
  private int fireRate;
  private ArrayList<Bullet> bullets;
  private int timer;
  private PImage sprite;
  
  // PLAYER POSSIBLY NEEDS A DIE VARIABLE AS WELL IN ORDER TO END THE GAME
 
 
 
  public Player (){
    sprite = loadImage ("./Sprites/Player/Isaac.png");
    position = new PVector (width / 2, height / 2);
    velocity = new PVector (0,0);
    speed = 3;
    health = 6;
    fireRate = 30; // 30 frame delay between shooting
    bullets = new ArrayList <>();
    timer = 0;
  }
  
  // creates a new bullet in the bullets arraylist
  public void shoot(){
    
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
  }
  
  //change velocity.x by -speed
  // check if player on left wall
  private void moveL (){
    
  }
  
  //change velocity.y by -speed
  // check if player on left wall
  private void moveU (){
    
  }
  
  //change velocity.x by speed
  // check if player on left wall
  private void moveR (){
    
  }
  
  //change velocity.y by speed
  // check if player on left wall
  private void moveD (){
    
  }
  
  // draws sprite
  // check for dead bullets using getDie()
  // call the subdraw function for all bullets
  // move()
  // if timer <= 0 && shoot input is pressed, THEN shoot and reset timer to firerate
  public void subDraw(){
    //image(sprite, position.x, position.y);
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
  
  //used by obstacles
  public void setPosition (PVector change){
    position.add(change);
  }
}
