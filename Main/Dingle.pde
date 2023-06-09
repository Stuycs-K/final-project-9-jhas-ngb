public class Dingle extends Enemies{
  private int timer;
  private ArrayList <EnemyBullet> bullets;
  
  // 5 speed, 300 health
  // used by BossRoom class
  // initialize bullets arraylist
  // initialize timer as 0
  public Dingle (PVector Position){
    
  }
  
  // sets velocity as position -> player.getPosition
  // NOTE: this function only runs every 6 seconds / 360 frames
  public void changeDirection(){
    
  }
  
  // if Boss runs into wall, reverse direction of the x or y component of velocity
  public void bounce(){
    
  }
  
  // apply velocity to position
  // if Boss goes out of bounds, then move position back to the wall
  public void applyVelocity(){
    
  }
  
  // take this function from attackfly
  // hurts the player if the player walks inside of the Boss
  public void damage(){
    
  }
  
  // adds 3 dips to the enemies arraylist of the currentRoom
  // make sure each dip position is a little different from each other
  public void summon(){
    
  }
  
  // creates 3 ENEMY BULLETS in the bullets arraylist
  // each bullet is initialized with Boss's position and velocity
  // use the PVector.rotate() function to make one of the bullets go straight, one of them go counter clockwise 30 degrees, and one of them go clockwise 30 degrees
  public void shoot(){
    
  }
  
  // Every 360 frames, changeDirection() and summon() and set timer to 180 to start applying velocity
  // bounce() to make sure boss doesn't just run into the wall
  // if timer > 0, THEN applyVelocity() and decrease timer
  // damage() to detect player collision with Boss
  // Run shoot() function every 12 seconds / 720 frames with 180 frame offset so that the shoot function never runs at the same time as summon and changeDirection
  // super.subDraw()
  public void subDraw(){
    
  }
}
