public class AttackFly extends Enemies{
  
  // used by the Normal Room class to make enemies
  public AttackFly(PVector position){
    super(5, 6, position, "./Sprites/Enemies/AttackFly.png");
  }
  
  // changes direction of velocity to go towards player
  // idk how you are going to do this but you are the vector person so you got this
  // Maybe find the use the position cordinates or smth (random idea, dont trust)
  public void changeDirection(){
    
  }
  
  // if position's distance to player's position is less than a certain range, THEN player.setHealth (DECREASE BY 1)
  // USE PVECTOR dist function to determine the distance (check PVector documentation online)
  public void damage(){
   
  }
  
  //change direction, damage, THEN super.subdraw
  public void subDraw(){
    
  }
}
