public class AttackFly extends Enemies{
  
  // used by the Normal Room class to make enemies
  public AttackFly(PVector position){
    super(5, 2, position, "./Sprites/Enemies/AttackFly.png");
  }
  
  // changes direction of velocity to go towards player
  // idk how you are going to do this but you are the vector person so you got this
  // Maybe find the use the position cordinates or smth (random idea, dont trust)
  public void changeDirection(){
    PVector velocity = this.getVelocity();
    PVector position = this.getPosition();
    PVector direction = new PVector(player.getPosition().x - position.x, player.getPosition().y - position.y);
    direction.normalize();
    velocity.add(direction.mult(getSpeed()));
    int dir = (int)(Math.random()*8);
    if(dir == 0){
      velocity.x += 1;
    }
    else if(dir == 1){
      velocity.x -= 1;
    }
    else if(dir == 2){
      velocity.y += 1;
    }
    else if(dir == 3){
      velocity.y -= 1;
    }
    else if(dir == 4){
      velocity.x += 1;
      velocity.y += 1;
    }
    else if(dir == 5){
      velocity.x -= 1;
      velocity.y += 1;
    }
    else if(dir == 6){
      velocity.x += 1;
      velocity.y -= 1;
    }
    else if(dir == 7){
      velocity.x -= 1;
      velocity.y -= 1;
    }
  }
  
  // if position's distance to player's position is less than a certain range, THEN player.setHealth (DECREASE BY 1)
  // USE PVECTOR dist function to determine the distance (check PVector documentation online)
  public void damage(){
   PVector position = this.getPosition();
     if(PVector.dist(player.getPosition(), position) < 20){
       player.setHealth(player.getHealth()-1);
     }
  }
  
  //change direction, damage, THEN super.subdraw
  public void subDraw(){
    changeDirection();
    damage();
    animate();
    super.subDraw(); 
  }
  
  //Has two sprites, flap wings, and flap wings 2
  public void animate (){
    if (frameCount % 10 == 0){
      if (this.getState() == 1){
        this.setState(2);
        setSprite("./Sprites/Enemies/AttackFly2.png");
      }else{
        this.setState(1);
        setSprite("./Sprites/Enemies/AttackFly.png");
      }
    }
  }
}
