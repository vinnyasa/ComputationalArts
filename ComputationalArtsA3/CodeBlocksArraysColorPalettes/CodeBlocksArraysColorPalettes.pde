//Code blocks, Arrays, and Color Palettes
//Global variables
color khyViolet = #A824D1;
color[]palette= {#0FCA96, #45AC90, #07AC21, #B62B8F, #A64EB2};
float x;

//setup()
void setup() {
  //size and background color
  size(800, 600);
  //local variable
  background(palette[3]);
}

//draw()
void draw() {
  x+=24;
  float r = random(5);
  //elements to be drawn to the canvas 
  noFill();
  strokeWeight(5);
  stroke(palette[int(r)]);
  rect(x, random(height), 250, 250);
  println(x);
  x = constrain(x, 0, width);
}


