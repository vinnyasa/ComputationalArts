//week 4.2 Sample Interactive Project 1
//Mouse Inout
//Based on Generative Design(2012)p11101
//available at http://generative-gestaltung.de

//Global Variables
int stepX;
int stepY;

//setup()
void setup(){
  size(800, 600);
  background(0);
}
//draw()
void draw(){
  colorMode(HSB, width, height, 100);
  //mouse input
  stepX = mouseX+20;
  stepY = mouseY+20;

  //for statement
  //gridX and gridX
  for(int gridY = 0; gridY < height; gridY+=stepY){
     for(int gridX = 0; gridX<width; gridX+=stepX){
       noStroke();
       fill(gridX, height-gridY, 100);
       ellipse(gridX, gridY, stepX, stepY);
     }
  }
}
//keyPressed()
void keyPressed(){
  if (key=='s' || key=='S') saveFrame("screenshot.png");
}
