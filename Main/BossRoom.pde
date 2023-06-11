public class BossRoom extends Room{
  ArrayList <Enemies> enemies;
  Dingle boss;
  
  // initialize boss with random position
  // initialize enemies arraylist
  public BossRoom (){
    PImage spriteS = this.getSprite();
    enemies = new ArrayList<>();
    boss = new Dingle (new PVector ((int)((Math.random() * (spriteS.width/2) + (width/2 - (0.5 * (spriteS.width/2))))), (int)(Math.random() * (spriteS.height/2) + (height/2 - (0.5 * (spriteS.height/2))))));
  }
  
  // calls super.subDraw FIRST
  // calls subdraw of enemies and boss
  public void subDraw(){
    super.subDraw();
    for (int i = 0; i < enemies.size(); i++){
      enemies.get(i).subDraw();
      if (getEnemies().get(i).getDie()){
        getEnemies().remove(i);
      }
    }
    boss.subDraw();
  }
  
}
