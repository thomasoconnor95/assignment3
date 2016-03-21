PImage bg;
PFont Font1;
int x = 0;

void setup() 
{
  size(1024, 768);
  background(0);
  noStroke();
  Font1 = createFont("Arial Bold", 18);
  fill(102);
  bg = loadImage("arcade.jpg");
  
}

void draw() 
{
  background (bg);
  textFont(Font1);
  textSize(25);
  fill(0,255,0);
  text("Please select a game", width/2 - 120, height/2 - 100);
  text("Pong", width/2, height/2 -50);
  text("Snake", width/2, height/2);
}