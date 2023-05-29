public class AttackFly extends Fly{
  private PVector acceleration;
  private PVector velocity;
  private int direction;
  private PVector position;
  
  public AttackFly(PVector position){
    super(5, 6, position, "Main\Sprites\Enemies\AttackFly.png");
    direction = 0;
    this.position = position;
  }
  /*
  *Chases the player, stronger gravity than Fly
  **/
  public void move(Player player){
    velocity.add(acceleration);
    position.add(PVector.add(velocity, acceleration));
    acceleration.x = 0;
    acceleration.y = 0;
    applyForce(attractTo(player));
    //attracted to the player's position
    //when in contact with player, cause it damage
    //create attractTo and apply force methods similar to orb physics with pvectors, use accceleration PVector
  }
  
  public void changeDirection(Player player){
    
    //the direction is attracted to player
    //check player;s posiiton, uses slope to adjust position and movement of player
  }
  
   PVector attractTo(Player player){
     float distance = this.position.dist(player.position);
     distance = max(15.0, distance);
     double mag = (0.01*mass*other.mass)/(distance*distance);
     PVector force = PVector.sub(other.position, this.position);//direction of the force
     force.normalize();
     PVector.mult(force, (float)mag);
     return force;
   }
 
 
 /*Apply a force to the current position by changing the acceleration.*/
  void applyForce(PVector f) {
    //knowing that f = ma, you can rearrange the formula to see how you want to manipulate acceleration:
    //a = f / m
    //CHANGE THIS
    //add  force/mass to the acceleration to apply the force.
    acceleration.add(PVector.mult(f, (1/mass)));
  }
  
  public boolean damage(Player player){
   
  
    if(player.getHealth() >= 1){
     player.setHealth() = player.getHealth()-1;
  }
    else{
     player.setHealth() = 0;
    }
  }
  
  /*
  *checks if in contact with player 
  **/
  public boolean contact(Player player){
    return(Player.position.x == this.position.x && Player.position.y == this.position.y);
  }
  
  public void subDraw(){
    changeDirection();
    move(player);
    
  }
}
