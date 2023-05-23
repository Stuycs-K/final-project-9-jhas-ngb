public class AttackFly extends Fly{
  int health = 5;
  public AttackFly(int health, int speed, PVector position, int timer){
    super(int health, int speed, PVector position, int timer);
  }
  /*
  *Chases the player, stronger gravity than Fly
  **/
  public void move(Player player){
  }
  
  /*
  *Damages player when in contact
  **/
  public boolean contact(Player player){
    
  }
}
