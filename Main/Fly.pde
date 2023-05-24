public class Fly extends Enemies{
  public Fly(PVector position){
    super(3, 5, PVector position);
  }
  public Fly(int health, int speed, PVector position){
     super(int health, int speed, int position);
  }
  /**
  *Moves around the room randomly
  */
  public void move(Player player){
    //use math.random to generate direction
    //constant speed and change direction every few sec
  }
}
