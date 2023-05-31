public class Spikes extends Obstacle{
  // NO DAMAGE VARIABLE BC IT ALWAYS DOES 1 DAMAGE
  private PVector position;
  
  // used by Normal Room to make spikes
  public Spikes(PVector position){
    super(position, false, "./Sprites/Obstacles/Spikes.png");
  }
  
  // hurts the player if inside of hitbox (search up what this means if u dont know)
  // similar to Blocks class, it detects when player enter the x and y range, BUT this time it does player.setHealth (REDUCE HEALTH BY 1)
  public void hurt (){
    if(abs(player.getPosition().x-this.position.x) <2 && abs(player.getPosition().y-this.position.y) <2){
      player.setHealth(player.getHealth()-1);
    }
    
  }
  
  public void subDraw(){
    hurt();
    super.subDraw();
  }
  
}
