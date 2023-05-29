public class Fly extends Enemies{
  private int direction;
  
  public Fly(PVector position){
    super(3, 5, PVector position, "Main\Sprites\Enemies\Fly.png");
    direction = 0;
  }
  
  public Fly(int health, int speed, PVector position, String sprite){
     super( health, speed, position, sprite);
  }
  /**
  *Moves around the room randomly
  */
  public void move(){
    if(direction == 0){
      posistion.set()
    }
    else if(direction == 1){
      posistion.set()
    }
    else if(direction == 2){
      posistion.set()
    }
    else if(direction == 3){
      posistion.set()
    }
    position.add(velocity);
    //initialize veolcity in constructor
    //use math.random to generate direction
    //add veolicty components to position components
    //check for when hits a wall, then bounces back, negates 
    //constant speed and change direction every few sec
  }
  
  public void changeDirection(){
    direction = (int)*Math.Random(4);
  }
}
