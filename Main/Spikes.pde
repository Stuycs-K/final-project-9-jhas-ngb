public class Spikes extends Obstacle{
  // NOT DAMAGE VARIABLE BC IT ALWAYS DOES 1 DAMAGE
  
  // used by Normal Room to make spikes
  public Spikes(PVector position){
    super(position, false, "Main\Sprites\Obstacles\Spikes.png");
  }
  
  // hurts the player if inside of hitbox (search up what this means if u dont know)
  // similar to Blocks class, it detects when player enter the x and y range, BUT this time it does player.setHealth (REDUCE HEALTH BY 1)
  public void hurt (){
    
  }
  
}
