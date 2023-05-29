public class Fly extends Enemies{
  private int direction;
  private position;
  
  public Fly(PVector position){
    super(3, 5, position, "Main\Sprites\Enemies\Fly.png");
    direction = 0;
    this.position = position;
  }
<<<<<<< HEAD
  public Fly(int health, int speed, PVector position, String path){
     super(health, speed, position, path);
     this.position = position;
=======
  
  public Fly(int health, int speed, PVector position, String sprite){
     super( health, speed, position, sprite);
>>>>>>> Baron
  }
  /**
  *Moves around the room randomly
  */
  public void move(){
    if(direction == 0){
      position.set(position.x +3, position.y);
    }
    else if(direction == 1){
      position.set(position.x -3, position.y);
    }
    else if(direction == 2){
      position.set(position.x, position.y+3);
    }
    else if(direction == 3){
      position.set(position.x, position.y-3);
    }
  }
  
  public int changeDirection(){
    direction = (int)*Math.Random()* 4;
    return direction;
  }
  
  public void edge(){
    int current = direction;
    if(direction == 0 && position.x + 3> width){
      while(current == changeDirection()){
        changeDirection();
      }
    }
    else if(direction == 1 && position.x - 3< 0){
      while(current == changeDirection()){
        changeDirection();
      }
    }
    else if(direction == 2 && position.y + 3> height){
      while(current == changeDirection()){
        changeDirection();
      }
    }
    else if(direction == 3 && position.y - 3< 0){
      while(current == changeDirection()){
        changeDirection();
      }
    }
    
  }
  
  public void subDraw(){
    changeDirection();
    edge();
    move();
  }
}
