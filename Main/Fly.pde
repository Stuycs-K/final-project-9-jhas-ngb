public class Fly extends Enemies{
  private int timer;
  private int rate;
  
  
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  
  // used by the Normal Room class to make enemies
  // 3 health, 5 speed, (position), sprite, timer = 0, and rate = 5
  public Fly(PVector position){
    super(3, 5, position, "./Sprites/Enemies/Fly.png");
    timer = 0;
    rate = 5;
  }
  
  // randomly chooses between the 4 directions (North, West,...) and sets velocity
  // KEEP IN MIND TO USE THE SPEED VARIABLE TO SET VELOCITY
  public void changeDirection(){
    int direction = (int)(Math.random()*8);
    PVector velocity = this.getVelocity();
    int speed = this.getSpeed();
    
    if(direction == 0){
      velocity.x += speed;
    }
    else if(direction == 1){
      velocity.x -= speed;
    }
    else if(direction == 2){
      velocity.y += speed;
    }
    else if(direction == 3){
      velocity.y -= speed;
    }
    
    else if(direction == 4){
      velocity.x += speed;
      velocity.y += speed;
    }
    else if(direction == 5){
      velocity.x -= speed;
      velocity.y += speed;
    }
    else if(direction == 6){
      velocity.x += speed;
      velocity.y -= speed;
    }
    else if(direction == 7){
      velocity.x -= speed;
      velocity.y -= speed;
    }
  }
  
  // if an enemy runs into a wall, negate its velocity.x or velocity.y appropriately
  public void turnAround(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    //corner
    //left or right wall
    if(position.x <= LEFT_BOUND || position.x >= RIGHT_BOUND){
      velocity.x *= -1;
    }
    //up or down wall
    if(position.y <= UP_BOUND || position.y >= DOWN_BOUND){
      velocity.y *= -1;
    }
  }
  
  // if timer <= 0, change direction and reset timer to rate, THEN super.subdraw
  public void subDraw(){
    timer--;
    if(timer <= 0){
      changeDirection();
      timer = rate;
    }
    animate();
    super.subDraw();
    
  }
  
  //Has two sprites, flap wings, and flap wings 2
  public void animate (){
    if (frameCount % 10 == 0){
      if (this.getState() == 1){
        this.setState(2);
        setSprite("./Sprites/Enemies/Fly2.png");
      }else{
        this.setState(1);
        setSprite("./Sprites/Enemies/Fly.png");
      }
    }
  }
}
