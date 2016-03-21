PImage bg;
int x = 0;

void setup() 
{
  size(1024, 768);
  background(0);
  noStroke();
  fill(102);
  textSize(25);
  bg = loadImage("arcade.jpg");
  
}

void draw() 
{
  background (bg);
}