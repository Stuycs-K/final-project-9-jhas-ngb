public class Rocks extends Obstacle{
  
  // used by Normal Room to make rocks
  // collision = true
  public Rocks(PVector position){
    super(position, true, "./Sprites/Obstacles/Rock.png");
 
  }
 
  
  // NOT IN THE MVP
  // sets the sprite to a broken rock, setCollision()
  public void destroyed(){
    setSprite("./Sprites/Obstacles/RockBroken.png");
    setCollision();
  }
  
}
