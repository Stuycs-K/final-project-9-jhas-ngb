public class NormalRoom extends Room{
  
  // super(), THEN initializes enemies & obstacles
  // THIS FUNCTION HAS TO MAKE THE ENEMIES AND OBSTACLES AS WELL, NOT JUST MAKE THE ARRAYLIST
  public NormalRoom (){
    super();
 
    ArrayList<PVector> obstacleGrid = new ArrayList<PVector>();
     for(int j = 0; j <5; j++){
      for(int k = 0; k <8; k++){
         obstacleGrid.add(new PVector(90 + 180*j, 90 + 180*k));
      }
    }
    
    for (int i = 0; i < 4; i++){
     int enemy = (int)(Math.random() * 2);
     ArrayList<Enemies> enemiesS = this.getEnemies();
     ArrayList<Obstacle> obstaclesS = this.getObstacles();
     
     PImage spriteS = this.getSprite();
     if (enemy == 0)
       enemiesS.add (new Fly (new PVector ((int)((Math.random() * (spriteS.width/2) + (width/2 - (0.5 * (spriteS.width/2))))), (int)(Math.random() * (spriteS.height/2) + (height/2 - (0.5 * (spriteS.height/2)))))));
     if (enemy == 1)
       enemiesS.add (new AttackFly (new PVector ((int)((Math.random() * (spriteS.width/2) + (width/2 - (0.5 * (spriteS.width/2))))), (int)(Math.random() * (spriteS.height/2) + (height/2 - (0.5 * (spriteS.height/2)))))));
     
     // randomly choose between obstacle types
     int obstacle = (int)(Math.random() * 3) ;
     int index = (int)(Math.random()*obstacleGrid.size());
     if (obstacle == 0)
       obstaclesS.add (new Blocks (obstacleGrid.remove(index)));
     if (obstacle == 1)
       obstaclesS.add (new Rocks (obstacleGrid.remove(index)));
     if (obstacle == 2)
       obstaclesS.add (new Spikes (obstacleGrid.remove(index)));
     }
  }
  
  //super.draw, draw obstacles, draw enemies
  public void subDraw(){
    println("height is " + height + " width " +width);
    super.subDraw();
    for (int i = 0; i < getObstacles().size(); i++){
      getObstacles().get(i).subDraw();
    }
    for (int i = 0; i < getEnemies().size(); i++){
      getEnemies().get(i).subDraw();
      if (getEnemies().get(i).getDie()){
        getEnemies().remove(i);
      }
    }
  }
  
}
