public class AttackFly extends Enemies{
  
  // used by the Normal Room class to make enemies
  public AttackFly(PVector position){
    super(5, 6, position, "./Sprites/Enemies/AttackFly.png");
  }
  
  // changes direction of velocity to go towards player
  // idk how you are going to do this but you are the vector person so you got this
  // Maybe find the use the position cordinates or smth (random idea, dont trust)
  public void changeDirection(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    velocity = new PVector(player.getPosition().x - position.x, player.getPosition().y - position.y);
  }
  
  // if position's distance to player's position is less than a certain range, THEN player.setHealth (DECREASE BY 1)
  // USE PVECTOR dist function to determine the distance (check PVector documentation online)
  public void damage(){
   PVector position = this.getPosition();
     if(PVector.dist(player.getPosition(), position) < 2){
       player.setHealth(player.getHealth()-1);
     }
  }
  
  //change direction, damage, THEN super.subdraw
  public void subDraw(){
    changeDirection();
    damage();
    super.subDraw(); 
  }
}
