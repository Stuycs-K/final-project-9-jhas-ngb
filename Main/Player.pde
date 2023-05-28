public class Player{
  private PVector position;
  private PVector velocity;
  private char direction;
  private int speed;
  private int health;
  private int maxHealth;
  private int damage;
  private int fireRate;
  private ArrayList<Bullet> bullets;
  private PImage sprite;
  
  public Player (){
    sprite = loadImage ("Main\Sprites\Player\Isaac.png");
    //initialize speed, health, maxHealth, damage, fireRate, position as the middle of the room
    // initializes direction as 'N' (null)
    health = 6;
    maxHealth = 6;
    damage = 1;
    fireRate = 1; // 1 sec delay between shooting
    position = new PVector (width / 2, height / 2);
    direction = 'N';
    bullets = new ArrayList <>();
  }
  
  public void shoot(){
    // bullets.add(new Bullet (velocity)
  }
  
  /*
  public void dropBomb (){
    // drop a bomb
  }
  */
  
  private void move (){
    // calls all other move functions
    // calls apply Velocity
    // calls slowDown
  }
  
  private void slowDown (){
    // slowly changes velocity unil it reaches 0
  }
  
  private applyVelocity (){
    // applys velocity to position
  }
  
  private void moveL (){
    //move position.x to the left by changing velocity.x if input (from Main) is true
    //if move past the wall, move back to the wall
  }
  
  private void moveU (){
    //move position.y to the up by changing velocity.y if input (from Main) is true
    //if move past the wall, move back to the wall
  }
  
  private void moveR (){
    //move position.x to the right by changing velocity.x if input (from Main) is true
    //if move past the wall, move back to the wall
  }
  
  private void moveD (){
    //move position.y to the down by changing velocity.y if input (from Main) is true
    //if move past the wall, move back to the wall
  }
  
  public void subDraw(){
    // calls move function
    move();
    // draw player at position using direction (for the head), and movement (for body), for right now though, just use the basic sprite
    image(sprite, position.x - sprite.width/2, position.y - sprite.height/2);
    // checks if bullets are die, then remove them from the arraylist (I think unreferencing them kills them)
    
    // draw all bullets in bullet list
    for (int i = 0; i < bullets.size(); i++){
      if (bullets.get(i).getDie()){
        bullets.remove(i); // might need to adjust index for this
        
      }
      bullets.get(i).subDraw();
    }
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
  
  public void setSprite (String newSprite){
   sprite = newSprite; 
  }
}
