//import minim files
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

/*
MOUSE
position x : size of circles
position y : fill color for elipses

KEY
1-3 : background color
del, backspace : erase
s : save png
other colors #D5FC8C, #182A67

*/




//Global Variables
Minim minim;
AudioPlayer ariyahShift;
AudioSample anandaSounds;
int circles = 24;
float effi;
int maxFrameCount = 576;
float kTime;
color kColor = #08DCFF;
color eColor = color(360);
boolean showImage = true; 
boolean dragging = false;


//Declare a PImage variable
PImage selfEmpowerement;
 
void setup() {
  minim = new Minim(this);
  ariyahShift = minim.loadFile("ariyahShift.wav");
  ariyahShift.play(); 
  ariyahShift.setGain(-24);
  anandaSounds = minim.loadSample("anandaSounds.wav");
  
  size(1280, 720);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  selfEmpowerement = loadImage("selfEmpowerement.png");
  noFill();
  
  
}
 
void draw() {
    if(showImage == true){
    image(selfEmpowerement, 0, 0);
    } else {
    background(kColor);
    noStroke();
    fill(eColor);
    ellipse(width/2, height/2, 24, 24);
    kTime = (float)frameCount/maxFrameCount;
    effi = TWO_PI*kTime;
    translate(width/2, height/2);
    pushMatrix();
    rotate(effi/circles);
    for (int i=0; i<circles; i++) {
      pushMatrix();
      float offSet = TWO_PI/circles*i;
      rotate(offSet);
      float sz = map(sin(effi+offSet), -1, 1, 24, 48);
      float x = 336;
      //stroke(255);
      fill(eColor);    
      ellipse(x, 0, sz, sz);
      //fill(#182A67);
      ellipse(x, 0, sz*.5, sz*.5);
      
      float sz2 = map(sin(-effi+offSet), -1, 1, 12, 24);
      float x2 = 168;
      //stroke(255);
      //fill(255);
      ellipse(x2, 0, sz2, sz2);
      //fill(#182A67);
      ellipse(x2, 0, sz2*.5, sz2*.5);
      
      float sz3 = map(sin(-effi+offSet), -1, 1, 8, 12);
      float x3 = 84;
      ellipse(x3, 0, sz3, sz3);
      ellipse(x3, 0, sz3*.5, sz3*.5);
      
      
      
      popMatrix();
      
    }
    
    
  popMatrix();
  }
  
}
  
  //if (t<=1.0) saveFrame("image-###.gif");


void mousePressed(){
  int innerColor = (int)map(mouseY, 0, height, 8, 360);
  int brave = (int)map(mouseY, 0, height, 8, 100);
  int bright = (int)map(mouseX, 0, width, 48, 100);
  eColor = color(innerColor, brave, bright, 48);
    
}

void mouseDragged() {
  dragging = true;
  int innerColor = (int)map(mouseY, 0, height, 8, 360);
  int brave = (int)map(mouseY, 0, height, 8, 100);
  int bright = (int)map(mouseX, 0, width, 48, 100);
  kColor = color(bright, brave, innerColor, 100);
}

void keyReleased(){
  if(key == DELETE || key == BACKSPACE) background(360);
  if(key =='s' || key == 'S') saveFrame("screenshot.png");
  
  
}

void keyPressed(){
  if(key == ENTER || key == RETURN) {
    if(showImage == false) {
        showImage = true;
      }else {
        showImage = false;
      }
      
  }
  switch(key){
    case 'm':
        anandaSounds.trigger();
        anandaSounds.setGain(-15);
      println("sample triggered");
      break;
    case 'q':
      anandaSounds.stop();
      break;
    
  }
}

