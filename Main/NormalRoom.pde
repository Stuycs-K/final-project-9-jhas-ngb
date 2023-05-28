public class NormalRoom extends Room{
  private Enemies type1;
  private Enemies type2;
  private ArrayList<Enemies> enemies; //this needs to be edited by Bullet and Player class
  private ArrayList<Obstacle> obstacles;
  
  public NormalRoom (){
    super();
    // initializes type1 and type2, creates those enemy on the Room grid based on the type number of the Enemy
    // the grid will have 0 (empty space), 1(enemy type 1), 2 (enemy type 2), and 3 (obstacle)
    // only two-three 1s and two-three 2s in the grid placed randomly around the center
    enemies = new ArrayList <>();
    obstacles = new ArrayList <>();
    type1 = new Fly(); // literally dunno how to make this work
    type2 = new AttackFly();
    
  }
  
  public void subDraw(){
    //if (loaded is false), if so, turn loaded to true and draw the room backdrop
    // calls the draw functions of enemies
    // calls the draw function of obstacles
    // calls the draw function of doors
    for (int i = 0; i < enemies.size(); i++){
      enemy.get(i).subDraw();
    }
    for (int i = 0; i < obstacles.size(); i++){
      obstacles.get(i).subDraw();
    }
    super.subDraw();
  }
  
  public boolean withinBullet (int index, PVector bulletP){
    return enemies.get(index).within(bulletP);
  }
  
  public void reduceHealth (int index){
    Enemies enemy = enemies.get(index);
    enemy.setHealth(enemy.getHealth() - 1);
  }
  
  public void bulletHit (PVector bulletP){
    for (int i = 0; i < enemies.size(); i++){
      if (withinBullet (i, bulletP)){
        reduceHealth (i);
        if (enemies.get(i).getHealth() <= 0){
          enemies.remove(i);
        }
      }
      
    }
  }
  
}
