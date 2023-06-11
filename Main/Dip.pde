public class Dip extends Enemies{
  private int timer;
  
  
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  
  // 3 speed, 2 health
  // used by NormalRoom or Dingle
  public Dip (PVector position){
    super(2,3,position, "./Sprites/Enemies/Dip/Dip1.png");
  }
  
  // NOTE: this function only runs every 6 seconds / 360 frames
  public void changeDirection(){
    PVector position = this.getPosition();
    PVector direction = PVector.sub(player.getPosition(), position);
    direction.normalize();
    this.getVelocity().set(direction.mult(this.getSpeed()));
    
  }
  
  // same as the applyVelocity for Dingle
  public void applyVelocity(){
    super.applyVelocity();
    PVector position = this.getPosition();
     if(position.x > RIGHT_BOUND){
       position.set(RIGHT_BOUND - 1, position.y);
     }
     if(position.x < LEFT_BOUND){
       position.set(LEFT_BOUND + 1, position.y);
     }
     if(position.y > DOWN_BOUND){
       position.set(position.x , DOWN_BOUND - 1);
     }
     if(position.y < UP_BOUND){
       position.set(position.x , UP_BOUND + 1);
     }
  }
  
  // same as the damage function for Dingle
  public void damage(){
    PVector position = this.getPosition();
    if(PVector.dist(player.getPosition(), position) < (super.sprite.height + super.sprite.width) / 4){
      player.setHealth(player.getHealth() - 1);
    }
  }
  
  // same as the bounce function for Dingle
  public void bounce(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    //left or right wall
    if(position.x <= LEFT_BOUND || position.x >= RIGHT_BOUND){
      velocity.x *= -1;
    }
    //up or down wall
    if(position.y <= UP_BOUND || position.y >= DOWN_BOUND){
      velocity.y *= -1;
    }
  }
  
  // Every 360 frames, changeDirection() and summon() and set timer to 180 to start applying velocity
  // bounce() to make sure boss doesn't just run into the wall
  // if timer > 0, THEN applyVelocity() and decrease timer
  // damage() to detect player collision with Boss
  // super.subDraw()
  public void subDraw(){
    if (frameCount % 120 == 0){
      changeDirection();
      timer = 90;
    }
    bounce();
    if(timer > 0){
      applyVelocity();
      timer--;
    }
    damage();
    image(super.sprite, this.getPosition().x - super.sprite.width/2, this.getPosition().y - super.sprite.height/2);
    if (this.getHealth() <= 0){
      super.die = true;
    }
  }
}
