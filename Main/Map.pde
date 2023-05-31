public class Map{
  private Room[][] map;
  private PVector currentRoom;
  
  //initializes a map with ONLY a startingRoom (dimensions: 5 by 5)
  // load() to load pre-existing map
  public Map (){
    load();
    currentRoom = new PVector (2,2);
  }
  
  // just make a basic map layout of 6 rooms (for the MVP demo)
  private void load (){
    for (int i = 0; i < map.length; i++){
      for (int j = 0; j < map[i].length; j++){
        map[i][j] = new NormalRoom();
      }
    }
  }
  
  // calls draw of currentRoom
  public void subDraw(){
    map[Math.round(currentRoom.x)][Math.round(currentRoom.y)].subDraw();
  }
  
  // used by Room, specifically in detectDoor()
  public int getCurrentX(){
    return Math.round(currentRoom.x);
  }
  
  // used by Room, specifically in detectDoor()
  public int getCurrentY(){
    return Math.round(currentRoom.y);
  }
  
  // used by Bullets to get the room to get the enemies
  public Room getCurrent(){
    return map[Math.round(currentRoom.x)][Math.round(currentRoom.y)];
  }
  
  // used by Room, specifically in detectDoor()
  // only activates if the next room exists
  public void setCurrent(int y, int x){
    currentRoom.set(y,x);
  }
}
