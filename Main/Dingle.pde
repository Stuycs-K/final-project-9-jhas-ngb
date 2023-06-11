public class Dingle extends Enemies{
  private int timer;
  private ArrayList <EnemyBullet> bullets;
  
  // 5 speed, 300 health
  // used by BossRoom class
  // initialize bullets arraylist
  // initialize timer as 0
  public Dingle (PVector Position){
    super(300, 5, Position, "./Sprites/Enemies/Dingle.png");
    bullets = new ArrayList<EnemyBullet>();
    timer = 0;
  }
  
  // sets velocity as position -> player.getPosition
  // NOTE: this function only runs every 6 seconds / 360 frames
  public void changeDirection(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    PVector direction = new PVector(player.getPosition().x - position.x, player.getPosition().y - position.y);
    direction.normalize();
    velocity.add(direction.mult(getSpeed()));
    
  }
  
  // if Boss runs into wall, reverse direction of the x or y component of velocity
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
  
  // apply velocity to position
  // if Boss goes out of bounds, then move position back to the wall
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
  
  // take this function from attackfly
  // hurts the player if the player walks inside of the Boss
  public void damage(){
   PVector position = this.getPosition();
   if(PVector.dist(player.getPosition(), position) < 20){
     player.setHealth(player.getHealth()-1);
   }
  }
  
  // adds 3 dips to the enemies arraylist of the currentRoom
  // make sure each dip position is a little different from each other
  public void summon(){
    //side
    if(this.getPosition().x + 100 < width){
      map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x + 50 ,this.getPosition().y)));
    }
    else{
      map.getCurrent().getEnemies().add(new Dip (new PVector(this.getPosition().x - 50,this.getPosition().y)));
    }
    //up/down
    if(this.getPosition().y + 100 < height){
      map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x ,this.getPosition().y+ 50)));
    }
    else{
      map.getCurrent().getEnemies().add(new Dip (new PVector(this.getPosition().x ,this.getPosition().y-50)));
    }
    //corners
    if(this.getPosition().y + 100 < height && this.getPosition().x + 100 < width){ //bottom right
      map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x +50,this.getPosition().y+ 50)));
    }
    else if(this.getPosition().y + 100 < height && this.getPosition().x - 100 >0){//bottom left
      map.getCurrent().getEnemies().add(new Dip (new PVector(this.getPosition().x -50,this.getPosition().y+50)));
    }
    else if(this.getPosition().y - 100 > 0 && this.getPosition().x - 100 >0){//top left
      map.getCurrent().getEnemies().add(new Dip (new PVector(this.getPosition().x -50,this.getPosition().y-50)));
    }
    else if(this.getPosition().y - 100 > 0 && this.getPosition().x + 100 < width){//top right
      map.getCurrent().getEnemies().add(new Dip (new PVector(this.getPosition().x +50,this.getPosition().y-50)));
    }
    
    
    
  
  }
  
  // creates 3 ENEMY BULLETS in the bullets arraylist
  // each bullet is initialized with Boss's position and velocity
  // use the PVector.rotate() function to make one of the bullets go straight, one of them go counter clockwise 30 degrees, and one of them go clockwise 30 degrees
  public void shoot(){
    bullets.add(new EnemyBullet(this.getVelocity(), this.getPosition()));//straight
    bullets.add(new EnemyBullet(this.getVelocity().rotate(PI/6), this.getPosition()));//counter
    bullets.add(new EnemyBullet(this.getVelocity().rotate(5*PI/6), this.getPosition()));//clock
  }
  
  // Every 360 frames, changeDirection() and summon() and set timer to 180 to start applying velocity
  // bounce() to make sure boss doesn't just run into the wall
  // if timer > 0, THEN applyVelocity() and decrease timer
  // damage() to detect player collision with Boss
  // Run shoot() function every 12 seconds / 720 frames with 180 frame offset so that the shoot function never runs at the same time as summon and changeDirection
  // super.subDraw()
  public void subDraw(){
    if (frameCount % 360 == 0){
      changeDirection();
      summon();
      timer = 180;
    }
    bounce();
    if(timer > 0){
      applyVelocity();
      timer--;
    }
    damage();
    if((frameCount +180)%720 == 0){
      shoot();
    }
    super.subDraw();
  }
}
