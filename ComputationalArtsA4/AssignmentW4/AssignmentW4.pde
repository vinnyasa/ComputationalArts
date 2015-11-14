//Assignment week 4
//My intention is to illustrate 3 shields, represented by 24 circles each.
//I mostly wanted to be able to play with color and sizes.
//I would also like to animate by rotating them,
//but for assignment it will respond only to mouse and key inputs,


/*
MOUSE
position x : size of circles
position y : fill color for ellipses

KEY
1-3 : background color
del, backspace : erase
s : save png

*/

//Global Variables
color kColor = color(360);
int numCircles = 24;
float effi;


void setup() {
  size(1280, 720);
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  background(360);
  noFill();
}

void draw() {
if(mousePressed){
  //change color
  background(kColor);
  noStroke();
  //transform
  effi = TWO_PI;
  translate(width/2, height/2);
  pushMatrix();
  rotate(effi/numCircles);
  //loop
  for (int i=0; i<numCircles; i++) {
    pushMatrix();
     float offSet = effi/numCircles*i;
    rotate(offSet);
    int sz = (int)map(mouseX, 0, width, 12, 72);
    float x = 320;
    //fill based on mouseY
    int innerColor = (int)map(mouseY, 0, height, 8, 360);
    int braveColor = (int)map(mouseY, 0, height, 8, 100);
    int brightColor = (int)map(mouseX, 0, width, 48, 100);
    fill(innerColor, braveColor, brightColor, 48);
    ellipse(x, 0, sz, sz);
    ellipse(x, 0, sz*.5, sz*.5);

    int sz2 = (int)map(mouseX, 0, width, 5, 32);
    float x2 = 180;
    ellipse(x2, 0, sz2, sz2);
    ellipse(x2, 0, sz2*.5, sz2*.5);

    int sz3 = (int)map(mouseX, 0, width, 3, 15);
    float x3 = 108;
    ellipse(x3, 0, sz3, sz3);
    ellipse(x3, 0, sz3*.5, sz3*.5);



    popMatrix();
  }
  popMatrix();
}
}

//kewPressed()
void keyReleased(){
  if(key == DELETE || key == BACKSPACE) background(360);
  if(key =='s' || key == 'S') saveFrame("screenshot.png");
  //change colors
  switch(key){
    case '1':
      kColor = color(186, 48, 100, 100);
      break;
    case '2':
      kColor = color(103, 41, 100, 100);
      break;
    case '3':
      kColor = color(360, 41, 99, 100);
      break;
  }
}
