
//working w twxt and variables
//setup

size(800, 600);
background(#A402D6);

//variables int, float, string
String k= "KarusaLAah Cycles";

//PFont and loading external font
PFont HelveticaNeueCB = loadFont("HelveticaNeueCB.vlw");

//working with text();
textFont(HelveticaNeueCB);
fill(#E3EA13);
textSize(48);
textAlign(CENTER);
text(k, width/2, height/2);
