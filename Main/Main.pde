
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
  
  if (key == 'A' || key == 'a'){
    inputs[KEY_LEFT] = true;
    println("A");
  }
  if (key == 'W' || key == 'w'){
    inputs[KEY_UP] = true;
    println("W");
  }
  if (key == 'D' || key == 'd'){
    inputs[KEY_RIGHT] = true;
    println("D");
  }
  if (key == 'S' || key == 's'){
    inputs[KEY_DOWN] = true;
    println("S");
  }
  if (key == ' '){
    inputs[SHOOT] = true;
    println("_");
  }
    
  if (key == 'J' || key == 'j'){
    inputs[D_LEFT] = true;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
    println("J");
  }else
  if (key == 'I' || key == 'i'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = true;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
    println("I");
  }else
  if (key == 'L' || key == 'l'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = true;
    inputs[D_DOWN] = false;
    println("L");
  }else
  if (key == 'K' || key == 'k'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = true;
    println("K");
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
  size(1200, 900);
  player = new Player ();
  map = new Map ();
  inputs = new boolean [9];
  frameRate(60); // set framerate to 60 fps
}

void draw(){
  background(0);
  print("Running ");
  map.subDraw();
  player.subDraw();
}
