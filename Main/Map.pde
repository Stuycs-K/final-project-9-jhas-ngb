public class Map{
  private Room[][] map;
  private PVector currentRoom;
  
  //initializes a map with ONLY a startingRoom (dimensions: 5 by 5)
  // load() to load pre-existing map
  public Map (){
    
  }
  
  // just make a basic map layout of 6 rooms (for the MVP demo)
  private void load (){
    
  }
  
  // calls draw of currentRoom
  public void subDraw(){
    
  }
  
  // used by Room, specifically in detectDoor()
  public Room getCurrent(){
    return this.map[Math.round(currentRoom.y)][Math.round(currentRoom.x)];
  }
  
  // used by Room, specifically in detectDoor()
  // only activates if the next room exists
  public void setCurrent(int y, int x){
    currentRoom.set(y,x);
  }
}
