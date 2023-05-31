public class NormalRoom extends Room{
  private ArrayList<Enemies> enemies;
  private ArrayList<Obstacle> obstacles;
  
  // super(), THEN initializes enemies & obstacles
  // THIS FUNCTION HAS TO MAKE THE ENEMIES AND OBSTACLES AS WELL, NOT JUST MAKE THE ARRAYLIST
  public NormalRoom (){
    super();
    enemies = new ArrayList <>();
    obstacles = new ArrayList <>();
  }
  
  //super.draw, draw obstacles, draw enemies
  public void subDraw(){
    super.subDraw();
    for (int i = 0; i < obstacles.size(); i++){
      obstacles.get(i).subDraw();
    }
    for (int i = 0; i < enemies.size(); i++){
      enemies.get(i).subDraw();
    }
  }
  
}
