// THIS ENTIRE CLASS IS NOT IN THE MVP
public class TNT extends Obstacle{
  
  public TNT(PVector position){
    super(position, true, "./Sprites/Obstacles/TNT.png");
  }
  
  public void explode(){
    setSprite("./Sprites/Obstacles/TNTExploded.png");
    setCollision();
  }
}
