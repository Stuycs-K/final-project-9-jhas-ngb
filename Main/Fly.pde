public class Fly extends Enemies{
  private PVector velocity;
  
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
    //initialize veolcity in constructor
    //use math.random to generate direction
    //add veolicty components to position components
    //check for when hits a wall, then bounces back
    //constant speed and change direction every few sec
  }
}
