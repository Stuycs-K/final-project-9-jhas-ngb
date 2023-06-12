public class Dingle extends Enemies{
  private int timer;
  private int initialHealth;
  private ArrayList <EnemyBullet> bullets;
  
  private PImage healthBar = loadImage("./Sprites/BossHealthBar.png");
  private PImage healthBarFiller = loadImage("./Sprites/BossHealthBarFiller.png");
  private int initialWidth = healthBarFiller.width;
  
  private PImage roomSprite = loadImage ("./Sprites/Room.png"); // I NEED THIS FOR THE BOUNDS
  
  // The 4 bound variables describe the cordinates of the walls of the room
  private final float LEFT_BOUND = width / 2 - (0.77 * (roomSprite.width / 2));
  private final float UP_BOUND = height / 2 - (0.75 * (roomSprite.height / 2));
  private final float RIGHT_BOUND = width / 2 + (0.77 * (roomSprite.width / 2));
  private final float DOWN_BOUND = height / 2 + (0.55 * (roomSprite.height / 2));
  
  
  // 5 speed, 75 health
  // used by BossRoom class
  // initialize bullets arraylist
  // initialize timer as 0
  public Dingle (PVector Position){
    super(75, 4, Position, "./Sprites/Enemies/Dingle/Dingle.png");
    initialHealth = 75;
    bullets = new ArrayList<EnemyBullet>();
    timer = 0;
  }
  
  // sets velocity as position -> player.getPosition
  // NOTE: this function only runs every 6 seconds / 360 frames
  public void changeDirection(){
    PVector position = this.getPosition();
    PVector direction = PVector.sub(player.getPosition(), position);
    direction.normalize();
    this.getVelocity().set(direction.mult(this.getSpeed()));
    
  }
  
  // if Boss runs into wall, reverse direction of the x or y component of velocity
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
  
  // apply velocity to position
  // if Boss goes out of bounds, then move position back to the wall
  public void applyVelocity(){
    super.applyVelocity();
    PVector position = this.getPosition();
     if(position.x > RIGHT_BOUND){
       position.set(RIGHT_BOUND, position.y);
     }
     if(position.x < LEFT_BOUND){
       position.set(LEFT_BOUND, position.y);
     }
     if(position.y > DOWN_BOUND){
       position.set(position.x , DOWN_BOUND);
     }
     if(position.y < UP_BOUND){
       position.set(position.x , UP_BOUND);
     }
  }
  
  // take this function from attackfly
  // hurts the player if the player walks inside of the Boss
  public void damage(){
    PVector position = this.getPosition();
    if(PVector.dist(player.getPosition(), position) < (super.sprite.height + super.sprite.width) / 4){
      player.setHealth(player.getHealth() - 1);
    }
  }
  
  // adds 3 dips to the enemies arraylist of the currentRoom
  // make sure each dip position is a little different from each other
  public void summon(){
    map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x,this.getPosition().y)));
    map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x,this.getPosition().y)));
    map.getCurrent().getEnemies().add(new Dip(new PVector(this.getPosition().x ,this.getPosition().y)));
    
  }
  
  // creates 3 ENEMY BULLETS in the bullets arraylist
  // each bullet is initialized with Boss's position and velocity
  // use the PVector.rotate() function to make one of the bullets go straight, one of them go counter clockwise 30 degrees, and one of them go clockwise 30 degrees
  public void shoot(){
    
    PVector position = this.getPosition();
    PVector direction = PVector.sub(player.getPosition(), position);
    direction.normalize();
    direction.mult(this.getSpeed() + 3);
    
    bullets.add(new EnemyBullet(direction, this.getPosition()));//straight
    bullets.add(new EnemyBullet(direction.rotate(PI/6), this.getPosition()));//counter
    bullets.add(new EnemyBullet(direction.rotate(10*PI/6), this.getPosition()));//clock
    // NOTE: THE BULLETS ARE USING THE SAME PVECTOR OBJECT!!! CHANGES ARE PERMANENT
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
    drawHealthBar();
    if(frameCount % 180 == 0){
      shoot();
    }
    for (int i = 0; i < bullets.size(); i++){
      bullets.get(i).subDraw();
      if (bullets.get(i).getDie()){
        bullets.remove(i);
      }
    }
    image(super.sprite, this.getPosition().x - super.sprite.width/2, this.getPosition().y - super.sprite.height/2);
    if (this.getHealth() <= 0){
      super.die = true;
    }
  }
  
  public void drawHealthBar(){
    healthBarFiller.width = initialWidth * this.getHealth() / initialHealth;
    image(healthBar, width / 2 - healthBar.width / 2, height / 2 + roomSprite.height / 2 - healthBar.height);
    image(healthBarFiller, width / 2 - healthBar.width / 2 * 0.8, height / 2 + roomSprite.height / 2 - healthBar.height * 0.81);
  }
  
  public void animate(){
    
  }
  
}
