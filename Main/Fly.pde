public class Fly extends Enemies{
  private PVector velocity;
  
  public Fly(PVector position){
    super(3, 5, PVector position, 5);
  }
  public Fly(int health, int speed, PVector position){
     super(int health, int speed, int position, 5);
  }
  /**
  *Moves around the room randomly
  */
  public void move(){
    position.add(velocity);
    //initialize veolcity in constructor
    //use math.random to generate direction
    //add veolicty components to position components
    //check for when hits a wall, then bounces back, negates 
    //constant speed and change direction every few sec
  }
  
  public void changeDirection(){
    //changes direction randomly 
  }
}
