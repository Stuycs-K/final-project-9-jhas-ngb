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
  
  private void moveL (){
    //move position.x to the left by 10 pixels if input (from Main) is true
  }
  
  private void moveU (){
    //move position.y to the up by 10 pixels if input (from Main) is true
  }
  
  private void moveR (){
    //move position.x to the right by 10 pixels if input (from Main) is true
  }
  
  private void moveD (){
    //move position.y to the down by 10 pixels if input (from Main) is true
  }
  
  public void draw(){
    // draw player
    // checks if bullets are die, then remove them from the arraylist (I think unreferencing them kills them)
    // draw all bullets in bullet list
  }
  
  public int getHealth(){
    return health;
  }
  
  public void setHealth(int change){
    health = change;
  }
  
  public PVector getPosition (){
    return position;
  }
  
  public void setPosition (PVector change){
    position = change;
  }
  
}
