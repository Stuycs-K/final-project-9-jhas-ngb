public class Room{
 private PImage sprite = loadImage ("./Sprites/Room.png"); // 468 x 312
 private ArrayList<Integer>doors;
 private final PImage door = loadImage("./Sprites/Door.png");
 
 private ArrayList<Enemies> enemies; // these have to be in here so that map can reference them
 private ArrayList<Obstacle> obstacles;
 
 // The 4 bound variables describe the cordinates of the walls of the room
 public final int LEFT_BOUND = width / 2 - sprite.width / 2;
 public final int UP_BOUND = height / 2 - sprite.height / 2;
 public final int RIGHT_BOUND = width / 2 + sprite.width / 2;
 public final int DOWN_BOUND = height / 2 + sprite.height / 2;
 
 // makeDoors()
 // used by normal room
 public Room(){
   doors = new ArrayList<>();
   enemies = new ArrayList<>();
   obstacles = new ArrayList<>();
   makeDoors();
 }
 
 //four if statements, checks if player enters door && if door exists within doors arraylist (using indexOf ?), move CurrentRoom index appropriately using the setCurrent() in global var map
 // FOR THE MVP, don't worry about some doors not linking to rooms, we just need a working product
 public void detectDoor(){
   int x = map.getCurrentX();
   int y = map.getCurrentY();
   if (player.position.x == width / 2 - sprite.width / 2 + 1 && (player.position.y > height / 2 - door.width / 2 || player.position.y < height / 2 + door.width / 2)){ // left wall
     player.position.x += 2 * (sprite.width / 2 + 1);
     map.setCurrent(x - 1, y);
   }
   if (player.position.x == width / 2 + sprite.width / 2 - 1 && ((player.position.y > height / 2 - door.width / 2) || (player.position.y < height / 2 + door.width / 2))){ // right wall
     player.position.x -= 2 * (sprite.width / 2 + 1);
     map.setCurrent(x + 1, y);
   }
   if (player.position.y == height / 2 - sprite.height / 2 + 1 && (player.position.x > width / 2 - door.width / 2 || player.position.x < width / 2 + door.width / 2)){ // top wall
     player.position.y += 2 * (sprite.height / 2 + 1);
     map.setCurrent(x, y - 1);
   }
   if (player.position.y == height / 2 + sprite.height / 2 - 1 && (player.position.x > width / 2 - door.width / 2 || player.position.x < width / 2 + door.width / 2)){ // bottom wall
     player.position.y -= 2 * (sprite.height / 2 + 1);
     map.setCurrent(x, y + 1);
   }
 }
 
 // randomly make doors (have 4 doors generate, if duplicate, then don't add to doors arraylist)
 //Left = 0
 //UP = 1
 //Right = 2
 //Down = 3
 public void makeDoors(){
   for (int i = 0; i < 4; i++){
     int direction = (int)(Math.random());
     if (doors.indexOf(direction) == -1){
       doors.add(direction);
     }
   }
 }
 
 // draws the doors using the doors arraylist
 // NEED SOME WAY TO ROTATE THE DOOR IMAGE, MAYBE JUST MAKE NEW SPRITES MANUALLY
 public void drawDoors(){
   for (int i = 0; i < doors.size(); i++){
     rotate(PI/2);
     if (doors.get(i) == 0){
       // draw left door image
       image(door, width / 2 - sprite.width / 2 - door.height, height / 2 - door.width);
     }
     rotate(-1 * (PI/2.0));
     if (doors.get(i) == 1){
       // draw top door image
       image(door, width / 2 - door.width / 2, height / 2 - sprite.height / 2 - door.height);
     }
     rotate(-1 * (PI/2.0));
     if (doors.get(i) == 2){
       // draw right door image
       image(door, width / 2 + sprite.width / 2, height / 2 - door.width);
     }
     rotate(-1 * (PI/2.0));
     if (doors.get(i) == 3){
       // draw bottom door image
       image(door, width / 2 - door.width / 2, height / 2 + sprite.height / 2);
     }
     rotate(-1 * (PI/2.0));
   }
 }
 
 // detectDoor(), draw backdrop, draw doors
 public void subDraw (){
   image(sprite, width / 2 - sprite.width / 2, height / 2 - sprite.height / 2);
   drawDoors(); // BROKEN
   detectDoor();
 }
 
 // used by Bullets, specifically the hurt() function
 // used by normal Room
  public ArrayList<Enemies> getEnemies (){
    return enemies;
  }
  
// used by normal Room
  public ArrayList<Obstacle> getObstacles (){
    return obstacles;
  }
  
  // used by normal Room
  public PImage getSprite (){
    return sprite;
  }
 
}
