//Working with If, From, and While

//Global variables
float x = 25;
float y = 25;
float counter = 0;
color[]palette = {#0FCA96, #45AC90, #07AC21, #B62B8F, #A64EB2};


//setup()
void setup() {
  size(800, 600);
  background(palette[0]);
  noLoop();
}

//draw()
void draw() {
  //while statement
  while(counter < 100) {
  float r = random(1,5);
  noFill();
  strokeWeight(random(8));
  stroke(palette[int(r)]);
  x = random(width);
  y = random(height);
  float d = random(200);
  ellipse(x, y, d, d);
  counter++;
  
  }
  
}


