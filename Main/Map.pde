public class Map{
  private PVector startingRoom;
  private Room[][] map;
  private PVector currentRoom;
  
  public Map (){
    //initializes a map with ONLY a startingRoom (dimensions: 5 by 5)
    // initialize startingRoom as the (2,2) indexes btw (and currentRoom)
  }
  
  public void moveRoom (){
    // changes currentRoom if Player on door
    // changes the screen to show that room (not every room will be loaded, only the currentRoom)
  }
  
  public void newRoom (){
    // creates a new with a specific orientation (there are 8 different orientations given that there can only be at most 3 doors in a room)
    // only activates if the player steps on a door AND the new room doesnt exist yet
  }
  
}
