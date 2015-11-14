import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class finalProjectVSound extends PApplet {

//import minim files



/*
MOUSE
position x & position y : fill color for elipses 
and change color background

KEY
m: music
s: silence
del, backspace : back to white spheres

some colors #D5FC8C, #182A67

*/


//Global Variables
Minim minim;
AudioPlayer ariyahShift;
AudioSample anandaShift;
int circles = 24;
float effi;
int maxFrameCount = 576;
float kTime;
int kColor = 0xff08DCFF;
int eColor = color(360);
boolean showImage = true; 
boolean dragging = false;

//Declare a PImage variable & keep track of current image of Array
PImage selfEmpowerment;


public void setup() {
  minim = new Minim(this);
  ariyahShift = minim.loadFile("ariyahShift.wav");
  anandaShift = minim.loadSample("anandaSounds.mp3");
  ariyahShift.play(); 
  ariyahShift.setGain(-24);
  size(1280, 720);
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  selfEmpowerment = loadImage("selfEmpowerment.png");
  noFill();
  
  
}

// draw, for both image and spheres, use Enter to switch 
public void draw() {
    if(showImage){
    image(selfEmpowerment, 0, 0);
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
      
      fill(eColor);    
      ellipse(x, 0, sz, sz);
      ellipse(x, 0, sz*.5f, sz*.5f);
      
      float sz2 = map(sin(-effi+offSet), -1, 1, 12, 24);
      float x2 = 168;
      ellipse(x2, 0, sz2, sz2);
      ellipse(x2, 0, sz2*.5f, sz2*.5f);
      
      float sz3 = map(sin(-effi+offSet), -1, 1, 8, 12);
      float x3 = 84;
      ellipse(x3, 0, sz3, sz3);
      ellipse(x3, 0, sz3*.5f, sz3*.5f);
      
      
      
      popMatrix();
      
    }
    
    
  popMatrix();
  }
  
}
  
// mouse press change colors
public void mousePressed(){
  if (mouseX == width/2) {
        eColor = 0xff0F710F;
        kColor = 0xffBC1125;
  }else {
  int innerColor = (int)map(mouseY, 0, height, 8, 360);
  int brave = (int)map(mouseX, 0, height, 8, 100);
  int bright = (int)map(mouseX, 0, width, 48, 100);
  eColor = color(innerColor, brave, bright, 48);
  } 
}

//mouseDragg change background
public void mouseDragged() {
  dragging = true;
  int innerColor = (int)map(mouseY, 0, height, 8, 360);
  int brave = (int)map(mouseY, 0, height, 8, 100);
  int bright = (int)map(mouseX, 0, width, 48, 100);
  kColor = color(bright, brave, innerColor, 100);
}



public void keyPressed(){
  if(key == ENTER || key == RETURN) {
    showImage = !showImage;   
  }
  if(key == DELETE || key == BACKSPACE) {
    eColor = color(360);
    kColor = 0xff08DCFF;
  }
  switch(key){
    case 'm':
      anandaShift.trigger();
      anandaShift.setGain(-15);
      break;
    case 's':
      anandaShift.stop();
      break;
    
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "finalProjectVSound" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
