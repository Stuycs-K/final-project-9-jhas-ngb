
static final int KEY_LEFT = 0;
static final int KEY_UP = 1;
static final int KEY_RIGHT = 2;
static final int KEY_DOWN = 3;

static final int D_LEFT = 4;
static final int D_UP = 5;
static final int D_RIGHT = 6;
static final int D_DOWN = 7;

static final int SHOOT = 8;
Player player;
Map map;
boolean [] inputs;

void keyPressed(){
  // checks what button is being pressed and runs the player's corresponding move functions
  // might need to change these characters to lowercase and uppercase
  // not sure if ' ' is the same as the spacebar
  
  if (key == 'A')
    inputs[KEY_LEFT] = true;
  if (key == 'W')
    inputs[KEY_UP] = true;
  if (key == 'D')
    inputs[KEY_RIGHT] = true;
  if (key == 'S')
    inputs[KEY_DOWN] = true;
    
  if (key == ' ')
    inputs[SHOOT] = true;
    
  if (key == 'J'){
    inputs[D_LEFT] = true;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
  }else
  if (key == 'I'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = true;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
  }else
  if (key == 'L'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = true;
    inputs[D_DOWN] = false;
  }else
  if (key == 'K'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = true;
  }
    
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
    
  if (key == ' ')
    inputs[SHOOT] = false;
    
  if (keyCode == 'J')
    inputs[D_LEFT] = false;
  if (keyCode == 'I')
    inputs[D_UP] = false;
  if (keyCode == 'L')
    inputs[D_RIGHT] = false;
  if (keyCode == 'K')
    inputs[D_DOWN] = false;
   
}

void setup(){
  player = new Player ();
  map = new Map ();
  inputs = new boolean [9];
}

void draw(){
  // calls the player and map's draw functions every 2 frames (unless it looks terrible)
}
