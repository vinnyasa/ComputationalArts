// A clear center point and a 2D spheres of random sizes, but in ordered appearance. Same center point. Most colors on the aqualeen palette. 
// Utilize a While loop structure. Make sure while loop ends by finishing when the center is reached.  

//Global Variables
//Define Color Palette
color[] aqualeen = {#BE59CC, #76D429, #01EEFF, #00838C, #01EEFF, #006D75, #01D6E5};
color[] palette = aqualeen;
int d=480;

//setup()
void setup(){
 size(800, 600);
 //select background color from the palette
 background(palette[0]);
}

//draw()
void draw(){
 //Setup while loop  for center point of 24, d bigger than 24
 while(d > 24){
   //Set stroke color to random palette color
   stroke(palette[int(random(1, 7))]);
   //Set stroke weight randomly
   strokeWeight(int(random(1, 8)));
   //Set fill color randomly from palette
   fill(palette[int(random(1, 7))]);
   //set ellipse x origin at center screen width
   float x = width/2;
   //set ellipse y origin at center of screen    
   float y = height/2;
   //draw ellipse 
   ellipse(x, y, d, d);
   //height and width decrease randomly from 1 to 4
   d -= random(1, 4);
 }
}


