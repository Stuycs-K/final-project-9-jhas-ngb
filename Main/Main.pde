
static final int len = 7;

static final int KEY_LEFT = 0;
static final int KEY_UP = 1;
static final int KEY_RIGHT = 2;
static final int KEY_DOWN = 3;

static final int D_LEFT = 4;
static final int D_UP = 5;
static final int D_RIGHT = 6;
static final int D_DOWN = 7;

static final int SHOOT = 8;

PImage GameOver;
Player player;
Map map;
boolean [] inputs;

boolean leftKeyNotPressed = true;
boolean upKeyNotPressed = true;
boolean rightKeyNotPressed = true;
boolean downKeyNotPressed = true;

void keyPressed(){
  // checks what button is being pressed and runs the player's corresponding move functions
  // might need to change these characters to lowercase and uppercase
  // not sure if ' ' is the same as the spacebar
  
  if (key == ' '){
    inputs[SHOOT] = true;
  }
    
  if (key == 'J' || key == 'j'){
    inputs[D_LEFT] = true;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
    leftKeyNotPressed = false;
  }else
  if (key == 'I' || key == 'i'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = true;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = false;
    upKeyNotPressed = false;
  }else
  if (key == 'L' || key == 'l'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = true;
    inputs[D_DOWN] = false;
    rightKeyNotPressed = false;
  }else
  if (key == 'K' || key == 'k'){
    inputs[D_LEFT] = false;
    inputs[D_UP] = false;
    inputs[D_RIGHT] = false;
    inputs[D_DOWN] = true;
    downKeyNotPressed = false;
  }
    
  if (key == 'A' || key == 'a'){
    inputs[KEY_LEFT] = true;
    if (leftKeyNotPressed && upKeyNotPressed && rightKeyNotPressed && downKeyNotPressed){
      inputs[D_LEFT] = true;
      inputs[D_UP] = false;
      inputs[D_RIGHT] = false;
      inputs[D_DOWN] = false;
    }
  }
  if (key == 'W' || key == 'w'){
    inputs[KEY_UP] = true;
    if (leftKeyNotPressed && upKeyNotPressed && rightKeyNotPressed && downKeyNotPressed){
      inputs[D_LEFT] = false;
      inputs[D_UP] = true;
      inputs[D_RIGHT] = false;
      inputs[D_DOWN] = false;
    }
  }
  if (key == 'D' || key == 'd'){
    inputs[KEY_RIGHT] = true;
    if (leftKeyNotPressed && upKeyNotPressed && rightKeyNotPressed && downKeyNotPressed){
      inputs[D_LEFT] = false;
      inputs[D_UP] = false;
      inputs[D_RIGHT] = true;
      inputs[D_DOWN] = false;
    }
  }
  if (key == 'S' || key == 's'){
    inputs[KEY_DOWN] = true;
    if (leftKeyNotPressed && upKeyNotPressed && rightKeyNotPressed && downKeyNotPressed){
      inputs[D_LEFT] = false;
      inputs[D_UP] = false;
      inputs[D_RIGHT] = false;
      inputs[D_DOWN] = true;
    }
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
    
  if (keyCode == 'J'){
    inputs[D_LEFT] = false;
    leftKeyNotPressed = true;
  }
  if (keyCode == 'I'){
    inputs[D_UP] = false;
    upKeyNotPressed = true;
  }
  if (keyCode == 'L'){
    inputs[D_RIGHT] = false;
    rightKeyNotPressed = true;
  }
  if (keyCode == 'K'){
    inputs[D_DOWN] = false;
    downKeyNotPressed = true;
  }
   
}

void setup(){
  fullScreen();
  GameOver = loadImage ("./Sprites/GAMEOVER.png");
  player = new Player ();
  map = new Map ();
  inputs = new boolean [9];
  frameRate(60); // set framerate to 60 fps
}

void draw(){
  if (frameCount % 60 == 0)
    println (leftKeyNotPressed + ", " + upKeyNotPressed + ", " + rightKeyNotPressed + ", " + downKeyNotPressed);
  if (!player.getDie()){
    background(0);
    map.subDraw();
    player.subDraw();
  } else {
    image(GameOver, width / 2 - GameOver.width / 2, height / 2 - GameOver.height / 2);
  }
}
