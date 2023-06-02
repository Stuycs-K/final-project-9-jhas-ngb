public class Room{
 private PImage sprite = loadImage ("./Sprites/Room.png");
 private ArrayList<Integer>doors;
 private final PImage door = loadImage("./Sprites/Door.png"); // upright
 private final PImage doorL = loadImage("./Sprites/DoorLeft.png");
 private final PImage doorD = loadImage("./Sprites/DoorDown.png");
 private final PImage doorR = loadImage("./Sprites/DoorRight.png");
 
 private final PImage hitbox = loadImage("./Sprites/hitBox.png");
 
 private ArrayList<Enemies> enemies; // these have to be in here so that map can reference them
 private ArrayList<Obstacle> obstacles;
 
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
   
   PVector positionDL = new PVector (width / 2 - sprite.width / 2, height / 2);
   PVector positionDU = new PVector (width / 2, height / 2 - sprite.height / 2);
   PVector positionDR = new PVector (width / 2 + sprite.width / 2, height / 2);
   PVector positionDD = new PVector (width / 2, height / 2 + sprite.height / 2);
   /*
   image (hitbox,width / 2 - (0.77 * (sprite.width / 2)), height / 2 - door.width / 2);
   image (hitbox, width / 2 + (0.77 * (sprite.width / 2)), height / 2 - door.width / 2);
   image (hitbox, width / 2 - door.width / 2, height / 2 - (0.75 * (sprite.height / 2)));
   image (hitbox, width / 2 - door.width / 2, height / 2 + (0.55 * (sprite.height / 2)));
   */
   if (player.getPosition().dist(positionDL) < doorL.height / 2 && (abs(player.getPosition().x - positionDL.x) < 10)){
     player.position.x += 2 * (sprite.width / 2 + 1);
     map.setCurrent(x - 1, y);
   }
   if (player.getPosition().dist(positionDU) < doorL.width / 2 && (abs(player.getPosition().y - positionDL.y) < 10)){
     player.position.y += 2 * (sprite.height / 2 + 1);
     map.setCurrent(x, y - 1);
   }
   if (player.getPosition().dist(positionDR) < doorL.height / 2 && (abs(player.getPosition().x - positionDL.x) < 10)){
     player.position.x -= 2 * (sprite.width / 2 + 1);
     map.setCurrent(x + 1, y);
   }
   if (player.getPosition().dist(positionDD) < doorL.width / 2 && (abs(player.getPosition().y - positionDL.y) < 10)){
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
     int direction = (int)(Math.random() * 4);
     if (doors.indexOf(direction) == -1){
       doors.add(direction);
     }
   }
 }
 
 // draws the doors using the doors arraylist
 // NEED SOME WAY TO ROTATE THE DOOR IMAGE, MAYBE JUST MAKE NEW SPRITES MANUALLY
 public void drawDoors(){
   for (int i = 0; i < doors.size(); i++){
     if (doors.get(i) == 0){
       // draw left door image
       image(doorL, width / 2 - (0.72 * (sprite.width / 2)) - doorL.width, height / 2 - doorL.height/2);
     }
     if (doors.get(i) == 1){
       // draw top door image
       image(door, width / 2 - door.width / 2, height / 2 - (0.58 * (sprite.height / 2)) - door.height);
     }
     if (doors.get(i) == 2){
       // draw right door image
       image(doorR, width / 2 + (0.72 * (sprite.width / 2)), height / 2 - doorR.height/2);
     }
     if (doors.get(i) == 3){
       // draw bottom door image
       image(doorD, width / 2 - doorD.width / 2, height / 2 + (0.58 * (sprite.height / 2)));
     }
   }
 }
 
 // detectDoor(), draw backdrop, draw doors
 public void subDraw (){
   image(sprite, width / 2 - sprite.width / 2, height / 2 - sprite.height / 2);
   drawDoors();
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
