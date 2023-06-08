public class Fly extends Enemies{
  private int timer;
  private int rate;
  private int state;
  
  // used by the Normal Room class to make enemies
  // 3 health, 5 speed, (position), sprite, timer = 0, and rate = 5
  public Fly(PVector position){
    super(3, 5, position, "./Sprites/Enemies/Fly.png");
    timer = 0;
    rate = 5;
    state = 0;
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
    if((position.x <= 0 || position.x >= width) &&(position.y <= 0 || position.y >= height)){
      velocity.x *= -1;
      velocity.y *= -1;
    }
    else if(position.x <= 0 || position.x >= width){
      velocity.x *= -1;
    }
    else if(position.y <= 0 || position.y >= height){
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
