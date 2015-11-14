//Assignment week 4
//Keyboard Input
//Mouse Input
//Screenshot Saving Capability
//A blank canvas until it receives user input, 
//and a static canvas after input completes.

/*
MOUSE
position x : size of circles
position y : fill color for ellipses 

KEY
1-3 : fill color
del, backspace : erase
s : save png
m: music
q: silence

*/

//Global Variables
color strokeColor = color(0,10);
int circles = 24;
float effi;
int maxFrameCount = 120;
float kTime;

//setup()
void setup(){
  size(1280, 720);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  noFill();
}

//draw()
void draw(){
  background(#182A67);
  noStroke();
  noFill();
  kTime = (float)frameCount/maxFrameCount;
  effi = TWO_PI*kTime;
  translate(width/2, height/2);
  pushMatrix();
  rotate(effi/circles);
  for(int i=0; i<circles; i++){
    pushMatrix();
    float offSet = TWO_PI/circles*i;
    rotate(offSet);
    float sz = map(sin(effi+offSet), -1, 1, 5, 50);
    float x = 180;
    fill(255);
    //fill according to mouse
    ellipse(x, 0, sz, sz);
    //filll according to mouse
    ellipse(x, 0, sz*.5, sz*.5);
    
    float sz2 = map(sin(-effi+offSet), -1, 1, 5, 30);
    float x2 = 110;
    //stroke(255);
    //fill(255);
    ellipse(x2, 0, sz2, sz2);
    //fill(#182A67);
    ellipse(x2, 0, sz2*.5, sz2*.5);
    
    popMatrix();
  }
  
  popMatrix();

}

//kewPressed()
void keyReleased(){
  if(key == DELETE || key == BACKSPACE) background(360);
  if(key =='s' || key == 'S') saveFrame("screenshot.png");
  
  switch(key){
    case '1':
      strokeColor = color(0, 10);
      break;
    case '2':
      strokeColor = color(192, 100, 64, 10);
      break;
    case '3':
      strokeColor = color(52, 100, 71, 10);
      break;
  }
}


