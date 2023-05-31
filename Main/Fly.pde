public class Fly extends Enemies{
  private int timer;
  private int rate;
  private PVector velocity;
  private int speed;
  private PVector position;
  
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
    int direction = (int)(Math.random()*4);
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
  }
  
  // if an enemy runs into a wall, negate its velocity.x or velocity.y appropriately
  public void turnAround(){
    //corner
    if((this.position.x <= 0 || this.position.x >= width) &&(this.position.y <= 0 || this.position.y >= height)){
      velocity.x *= -1;
      velocity.y *= -1;
    }
    else if(this.position.x <= 0 || this.position.x >= width){
      velocity.x *= -1;
    }
    else if(this.position.y <= 0 || this.position.y >= height){
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
    super.subDraw();
    
  }
}
