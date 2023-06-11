public class BossRoom extends Room{
  Dingle boss;
  
  // initialize boss with random position
  // initialize enemies arraylist
  public BossRoom (){
    super();
    PImage spriteS = this.getSprite();
    boss = new Dingle (new PVector ((int)((Math.random() * (spriteS.width/2) + (width/2 - (0.5 * (spriteS.width/2))))), (int)(Math.random() * (spriteS.height/2) + (height/2 - (0.5 * (spriteS.height/2))))));
    this.getEnemies().add(boss);
  }
  
  // calls super.subDraw FIRST
  // calls subdraw of enemies and boss
  public void subDraw(){
    super.subDraw();
    for (int i = 0; i < this.getEnemies().size(); i++){
      this.getEnemies().get(i).subDraw();
      if (getEnemies().get(i).getDie()){
        getEnemies().remove(i);
      }
    }
    if (boss.getDie()){
      PImage win = loadImage("./Sprites/WIN.png");
      image (win, width / 2 - win.width / 2, height / 2 - win.height / 2);
    }
  }
  
}
