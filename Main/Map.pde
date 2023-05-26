public class Map{
  private PVector startingRoom;
  private Room[][] map;
  private PVector currentRoom;
  
  public Map (){
    //initializes a map with ONLY a startingRoom (dimensions: 5 by 5)
    // initialize startingRoom as the (2,2) indexes btw (and currentRoom)
    // call load function (for a premade map)
    startingRoom = new PVector(2,2);
    currentRoom = new PVector (2,2);
    map = new Room [5][5];
    map[startRoom.x][startingRoom.y] = new NormalRoom();
  }
  
  public void moveRoom (char direction){
    // changes currentRoom if Player on door
    // also set currentRoom loaded to false before moving
    // changes the screen to show that room (not every room will be loaded, only the currentRoom)
      // direction determines which room to move to (using the map 2d array of rooms)
  }
  
  private void load (){
    // just make a basic map layout of 6 rooms (for the MVP demo)
  }
  
  public void newRoom (){
    // creates a new with a specific orientation (there are 8 different orientations given that there can only be at most 3 doors in a room)
    // only activates if the player steps on a door AND the new room doesnt exist yet
    // for the MVP, don't need to randomize bc I am not spending a millenium on room generation
  }
  
  public void subDraw(){
    // draws the map ui (additional feature)
    // calls the draw function of the currentRoom
    int col = currentRoom.x;
    int row = currentRoom.y;
    map[row][col].subDraw();
  }
  
}
