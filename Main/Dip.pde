public class Dip extends Enemies{
  private int timer;
  
  // 3 speed, 3 health
  // used by NormalRoom or Dingle
  public Dip (PVector position){
    
  }
  
  // same as the changeDirection for Dingle
  public void changeDirection(){
    
  }
  
  // same as the applyVelocity for Dingle
  public void applyVelocity(){
    
  }
  
  // same as the damage function for Dingle
  public void damage(){
    
  }
  
  // same as the bounce function for Dingle
  public void bounce(){
    
  }
  
  // Every 360 frames, changeDirection() and summon() and set timer to 180 to start applying velocity
  // bounce() to make sure boss doesn't just run into the wall
  // if timer > 0, THEN applyVelocity() and decrease timer
  // damage() to detect player collision with Boss
  // super.subDraw()
  public void subDraw(){
    
  }
}
