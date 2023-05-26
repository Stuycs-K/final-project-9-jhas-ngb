public class Blocks extends Obstacle{
  
  public boolean collisoin(){
  }
  
  public Blocks(PVector position){
    super(position);
  }
  
  //tells if in contact with player because then player can't go onto that position
  public boolean touch(Player player){
    return(Player.position.x == this.position.x && Player.position.y == this.position.y);
  }
}
