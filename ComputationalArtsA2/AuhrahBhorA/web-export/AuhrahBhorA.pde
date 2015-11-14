void setup()
{
  size(640, 480);
  background(#CBFF00);  
}

void draw()
{
  //2 outer circles
  stroke(#FFFFFF);
  strokeWeight(1);
  fill(#1FFFD8);
  ellipse(320, 240, 460, 460);
  fill(#CBFF00);
  ellipse(320, 240, 412, 412);
  
  //6 arcs
  stroke(#E0E3E3);
  strokeWeight(2);
  noFill();
  arc(320, 137, 182, 182, 3, 6.4);
  arc(392, 167, 182, 182, 3.8, 7.2);
  arc(248, 167, 182, 182, 2.25, 5.6);
  arc(320, 343, 182, 182, 6.17, 9.54);
  arc(392, 313, 182, 182, 5.4, 8.75);
  arc(248, 313, 182, 182, 6.93, 10.32);

  
  //2 petals
  stroke(#E5D078);
  noFill();
  ellipse(320, 142, 48, 168);
  ellipse(320, 338, 48, 168);
  
  //4 circles 
  stroke(#FFFFFF);
  fill(#FF7EE6);
  ellipse(320, 240, 256, 256);
  fill(#CBFF00);
  ellipse(320, 240, 224, 224);
  fill(#FF6E46);
  ellipse(320, 240, 144, 144);
  fill(#CBFF00);
  ellipse(320, 240, 112, 112);
  
  //core - 2 circles
  stroke(#000000);
  fill(#050505);
  ellipse(320, 240, 24, 24);
  stroke(#FFFFFF);
  fill(#FFFFFF);
  ellipse(320, 240, 8, 8);
  
  //4 points in 3rd circle
  stroke(#E0E3E3);
  strokeWeight(8);
  point(320, 200);
  point(360, 240);
  point(320, 280);
  point(280, 240);
  
  //4 points in 5th circle
  stroke(#E5D078);
  strokeWeight(8);
  point(320, 150);
  point(410, 240);
  point(320, 330);
  point(230, 240);
  
  
}

