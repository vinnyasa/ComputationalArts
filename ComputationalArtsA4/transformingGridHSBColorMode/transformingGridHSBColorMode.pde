//Week 4.1
//Global Variable

//setup()
void setup(){
  size(640, 640);
 colorMode(HSB, width, height, 100);
 background(random(width), random(height), random(100));
 
}

//draw()
void draw(){
  stroke(mouseX, mouseY, 80);
  fill(mouseY, mouseX, 88);
  rect (100, 100, 100, 100);
  //transform the grid
  pushMatrix();
  stroke(50, mouseX, mouseY);
  translate(200, 200);
  scale(1.2);
  rotate(radians(45));
  stroke(mouseX, 50, mouseY);
  rect(100, 100, 100, 100);
  popMatrix();
  fill(mouseX, mouseY, 88);
  //mousePressed
  if(keyPressed == true){
    rect(100, 100, 48, 48);
  }
//mouse input  
//mouseMoved()
void mouseMoved(){
  background(random(width), random(height), random(100);

}

//mouseDragged()
void mouseDragged(){
  background(random(width), random(height), random(100);
}

//mouseRelease()
void mouseDragged(){
  background(random(width), random(height), random(100);
}

//keyPressed()
void keyPressed(){
  if (key=='s' || key=='S'){
    background(random(width), random(height), random(100);
  }
}

//keyReleased()
void keyReleased(){
  if (key=='s' || key=='S'){
    background(random(width), random(height), random(100);


}

}

