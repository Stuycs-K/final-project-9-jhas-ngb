public class Dip extends Enemies{
  private int timer;
  
  // 3 speed, 3 health
  // used by NormalRoom or Dingle
  public Dip (PVector position){
    super(3,3,position, "./Sprites/Enemies/Dip.png");
  }
  
  // same as the changeDirection for Dingle
  public void changeDirection(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    PVector direction = new PVector(player.getPosition().x - position.x, player.getPosition().y - position.y);
    direction.normalize();
    velocity.add(direction.mult(getSpeed()));
    
  }
  
  // same as the applyVelocity for Dingle
  public void applyVelocity(){
    super.applyVelocity();
    PVector position = this.getPosition();
     if(position.x > width){
       this.setPosition(new PVector(width -1 ,position.y));
     }
     if(position.x < 0){
       this.setPosition(new PVector(1 ,position.y));
     }
     if(position.y > height){
       this.setPosition(new PVector(position.x ,height -1));
     }
     if(position.x < 0){
       this.setPosition(new PVector(position.x ,1));
     }
  }
  
  // same as the damage function for Dingle
  public void damage(){
    PVector position = this.getPosition();
   if(PVector.dist(player.getPosition(), position) < 20){
     player.setHealth(player.getHealth()-1);
   }
  }
  
  // same as the bounce function for Dingle
  public void bounce(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    //corner
    if((position.x <= 0 || position.x >= width) &&(position.y <= 0 || position.y >= height)){
      velocity.x *= -1;
      velocity.y *= -1;
    }
    //left or right wall
    else if(position.x <= 0 || position.x >= width){
      velocity.x *= -1;
    }
    //up or down wall
    else if(position.y <= 0 || position.y >= height){
      velocity.y *= -1;
    }
  }
  
  // Every 360 frames, changeDirection() and summon() and set timer to 180 to start applying velocity
  // bounce() to make sure boss doesn't just run into the wall
  // if timer > 0, THEN applyVelocity() and decrease timer
  // damage() to detect player collision with Boss
  // super.subDraw()
  public void subDraw(){
    if (frameCount % 360 == 0){
      changeDirection();
      timer = 180;
    }
    bounce();
    if(timer > 0){
       applyVelocity();
       timer--;
    }
    damage();
    super.subDraw();
  }
}
