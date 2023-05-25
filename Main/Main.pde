
static final int KEY_LEFT = 0;
static final int KEY_UP = 1;
static final int KEY_RIGHT = 2;
static final int KEY_DOWN = 3;
Player player;
Map map;
boolean [] inputs;

void keyPressed(){
  // checks what button is being pressed and runs the player's corresponding move functions
  
  if (keyCode == 'A')
    inputs[KEY_LEFT] = true;
  if (keyCode == 'W')
    inputs[KEY_UP] = true;
  if (keyCode == 'D')
    inputs[KEY_RIGHT] = true;
  if (keyCode == 'S')
    inputs[KEY_DOWN] = true;
    
}

void keyReleased(){
  // checks what button is being pressed and runs the player's corresponding move functions
  
  if (keyCode == 'A')
    inputs[KEY_LEFT] = false;
  if (keyCode == 'W')
    inputs[KEY_UP] = false;
  if (keyCode == 'D')
    inputs[KEY_RIGHT] = false;
  if (keyCode == 'S')
    inputs[KEY_DOWN] = false;
   
}

void setup(){
  player = new Player ();
  map = new Map ();
  inputs = new boolean [4];
}

void draw(){
  // calls the player and map's draw functions every frame
}
