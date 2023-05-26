public class AttackFly extends Fly{
  private PVector acceleration;
  private PVector velocity;
  private int direction;
  
  public AttackFly(PVector position){
    super(5, 6, position);
    direction = 0;
  }
  /*
  *Chases the player, stronger gravity than Fly
  **/
  public void move(){
    //attracted to the player's position
    //when in contact with player, cause it damage
    //create attractTo and apply force methods similar to orb physics with pvectors, use accceleration PVector
  }
  
  public void changeDirection(Player player{
    //the direction is attracted to player
    //check player;s posiiton, uses slope to adjust position and movement of player
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
}
