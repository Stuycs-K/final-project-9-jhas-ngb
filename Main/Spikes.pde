public class Spikes extends Obstacle{
  private int damage;
  
  public Spikes(PVector position){
    super(position);
    damage = 1;
  }
  
  public boolean damage(Player player){
    if(player.getHealth() >= 1){
     player.setHealth() = player.getHealth()-1;
  }
    else{
     player.setHealth() = 0;
    }
  }
  public boolean touch(Player player){
    return(Player.position.x == this.position.x && Player.position.y == this.position.y);
  }
}
