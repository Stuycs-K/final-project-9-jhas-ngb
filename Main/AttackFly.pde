public class AttackFly extends Fly{
  private PVector acceleration;
  
  public AttackFly(PVector position){
    super(5, 6, PVector position);
  }
  /*
  *Chases the player, stronger gravity than Fly
  **/
  public void move(Player player){
    //attracted to the player's position
    //when in contact with player, cause it damage
    //create attractTo and apply force methods similar to orb physics with pvectors, use accceleration PVector
  }
  
  /*
  *checks if in contact with player 
  **/
  public boolean contact(Player player){
    //return(Player.position.x == this.position.x && same for y)
      
    //checks if position is same as position of player 
  }
}
