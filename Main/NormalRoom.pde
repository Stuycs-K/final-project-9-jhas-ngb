public class NormalRoom extends Room{
  
  // super(), THEN initializes enemies & obstacles
  // THIS FUNCTION HAS TO MAKE THE ENEMIES AND OBSTACLES AS WELL, NOT JUST MAKE THE ARRAYLIST
  public NormalRoom (){
    super();
    for (int i = 0; i < 4; i++){
     int enemy = (int)(Math.random() * 2);
     ArrayList<Enemies> enemiesS = this.getEnemies();
     ArrayList<Obstacle> obstaclesS = this.getObstacles();
     PImage spriteS = this.getSprite();
     if (enemy == 0)
       enemiesS.add (new Fly (new PVector (Math.random() * spriteS.width + (width/2 - (0.8 * (spriteS.width/2))), Math.random() * spriteS.height + (height/2 - (0.8 * (spriteS.height/2))))));
     if (enemy == 1)
       enemiesS.add (new AttackFly (new PVector (Math.random() * spriteS.width + (width/2 - (0.8 * (spriteS.width/2))), Math.random() * spriteS.height + (height/2 - (0.8 * (spriteS.height/2))))));
     
     // randomly choose between obstacle types
     int obstacle = (int)(Math.random() * 3) ;
     if (obstacle == 0)
       obstaclesS.add (new Block (new PVector (Math.random() * spriteS.width + (width/2 - (0.8 * (spriteS.width/2))), Math.random() * spriteS.height + (height/2 - (0.8 * (spriteS.height/2))))));
     if (obstacle == 1)
       obstaclesS.add (new Rock (new PVector (Math.random() * spriteS.width + (width/2 - (0.8 * (spriteS.width/2))), Math.random() * spriteS.height + (height/2 - (0.8 * (spriteS.height/2))))));
     if (obstacle == 2)
       obstaclesS.add (new Spike (new PVector (Math.random() * spriteS.width + (width/2 - (0.8 * (spriteS.width/2))), Math.random() * spriteS.height + (height/2 - (0.8 * (spriteS.height/2))))));
   }
  }
  
  //super.draw, draw obstacles, draw enemies
  public void subDraw(){
    super.subDraw();
    for (int i = 0; i < getObstacles().size(); i++){
      getObstacles().get(i).subDraw();
    }
    for (int i = 0; i < getEnemies().size(); i++){
      getEnemies().get(i).subDraw();
    }
  }
  
}
