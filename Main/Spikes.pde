public class Spikes extends Obstacle{
  // NO DAMAGE VARIABLE BC IT ALWAYS DOES 1 DAMAGE
  // used by Normal Room to make spikes
  public Spikes(PVector position){
    super(position, false, "./Sprites/Obstacles/Spikes.png");
    
  }
  
  // hurts the player if inside of hitbox (search up what this means if u dont know)
  // similar to Blocks class, it detects when player enter the x and y range, BUT this time it does player.setHealth (REDUCE HEALTH BY 1)
  public void hurt (){
    PVector position = this.getPosition();
    if((abs(player.getPosition().x - position.x) < this.getSprite().width / 2) && (abs(player.getPosition().y - position.y) < this.getSprite().height / 2)){
      player.setHealth(player.getHealth() - 1);
    }
    
  }
  
  public void subDraw(){
    hurt();
    super.subDraw();
  }
  
}
