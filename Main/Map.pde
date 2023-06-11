public class Map{
  private Room[][] map;
  private PVector currentRoom;
  
  //initializes a map with ONLY a startingRoom (dimensions: 5 by 5)
  // load() to load pre-existing map
  public Map (){
    map = new Room [len][len];
    load();
    currentRoom = new PVector (len / 2, len / 2);
  }
  
  // just make a basic map layout of 6 rooms (for the MVP demo)
  private void load (){
    for (int i = 0; i < map.length; i++){
      for (int j = 0; j < map[i].length; j++){
        map[i][j] = new NormalRoom();
      }
    }
    int row = (int)(Math.random() * len);
    int col = (int)(Math.random() * len);
    map[row][col] = new BossRoom();
    print(row + " " + col);
  }
  
  // calls draw of currentRoom
  public void subDraw(){
    map[Math.round(currentRoom.x)][Math.round(currentRoom.y)].subDraw();
  }
  
  // used by Bullets to get the room to get the enemies
  public Room getCurrent(){
    return map[Math.round(currentRoom.x)][Math.round(currentRoom.y)];
  }
  
  public PVector getCurrentVector(){
    return currentRoom;
  }
  
  // used by Room, specifically in detectDoor()
  // only activates if the next room exists
  public void setCurrent(int x, int y){
    currentRoom.set(x,y);
    println(x + " " + y);
  }
}
