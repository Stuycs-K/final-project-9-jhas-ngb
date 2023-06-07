public class NormalRoom extends Room{
    private PImage roomSprite = loadImage ("./Sprites/Room.png");//need this for dimensions
    private PImage singleObstacle = loadImage("./Sprites/Obstacles/Block.png");//need this for dimensions
    PVector positionDL = new PVector (width / 2 - (0.77 * (roomSprite.width / 2)), height / 2);
    PVector positionDU = new PVector (width / 2, height / 2 - (0.75 * (roomSprite.height / 2)));
    PVector positionDR = new PVector (width / 2 + (0.77 * (roomSprite.width / 2)), height / 2);
    PVector positionDD = new PVector (width / 2, height / 2 + (0.55 * (roomSprite.height / 2)));
  
  // super(), THEN initializes enemies & obstacles
  // THIS FUNCTION HAS TO MAKE THE ENEMIES AND OBSTACLES AS WELL, NOT JUST MAKE THE ARRAYLIST
  public NormalRoom (){
    super();
 
    ArrayList<PVector> obstacleGrid = new ArrayList<PVector>();
    
    float L = width / 2 - (0.77 * (roomSprite.width / 2));
    float U = height / 2 - (0.75 * (roomSprite.height / 2));
    float R = width / 2 + (0.77 * (roomSprite.width / 2));
    float D = height / 2 + (0.55 * (roomSprite.height / 2));
    float x = (R - L-singleObstacle.width)/(singleObstacle.width *1.5);
    float y = (D - U-singleObstacle.height)/(singleObstacle.height *1.5);
     for(int k = 0; k <y; k++){
      for(int j = 0; j <x; j++){
          PVector add = new PVector(  L +   singleObstacle.width + j*singleObstacle.width  , U + singleObstacle.height + k*singleObstacle.height);
          if(!inFrontOfDoor(add)){//adds obstacle only if not blocking door
            obstacleGrid.add(add);
          }
          //make so doesnt block doors
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
  
  public boolean inFrontOfDoor(PVector position){
    return ( (position.x - positionDL.x < singleObstacle.width) ||  (positionDR.x - position.x < singleObstacle.width) ||   (position.y - positionDU.y <singleObstacle.height) || (positionDD.y - position.y <singleObstacle.height) );
  }
  
  //super.draw, draw obstacles, draw enemies
  public void subDraw(){
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
