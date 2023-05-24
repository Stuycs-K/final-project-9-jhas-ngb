public class Player{
  private PVector position;
  private int speed;
  private int health;
  private int maxHealth;
  private int damage;
  private int fireRate;
  private ArrayList<Bullet> bullets;
  public Player (){
    //initialize speed, health, maxHealth, damage, fireRate, position as the middle of the room
  }
  
  public void shoot(){
    // create bullet
    // adds it to bullets list
  }
  
  /*
  public void dropBomb (){
    // drop a bomb
  }
  */
  
  public void moveL (){
    //move left
  }
  
  public void moveU (){
    //move up
  }
  
  public void moveR (){
    //move right
  }
  
  public void moveD (){
    //move down
  }
  
  public void draw(){
    // draw player
    // checks if bullets are die, then remove them from the arraylist (I think unreferencing them kills them)
    // draw all bullets in bullet list
  }
  
}
