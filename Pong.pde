class Pong 
{
  int paddleLeftX, paddleLeftY, paddleW, paddleH;
  int paddleRightX, paddleRightY;
  int x, y, w;
  int speedX, speedY;
  
  Pong()
  {
    
  }
  void run()
  {
    display();
  }
  void display()
  {
    drawPaddle();
    drawBall();
    ballMove();
  }
  void drawPaddle()
  {
    //paddle variables
    paddleLeftX = 50;
    paddleLeftY = height/2;
    
    paddleRightX = width-50;
    paddleRightY = height/2;
    
    paddleW = 25;
    paddleH = 100;
    //left paddle
    fill(255,0,0);
    rect(paddleLeftX, paddleLeftY, paddleW, paddleH);
    
    //right paddle
    fill(0,0,255);
    rect(paddleRightX, paddleRightY, paddleW, paddleH);
  }
  void drawBall()
  {
    //ball initialisation
    x = width/2;
    y = height/2;
    w = 50;
    speedX = 2;
    speedY = 4;
    anyKey=false;
    fill(0,255,0);
    ellipse(x,y,w,w);
  }
  
  void ballMove()
  {
    if(anyKey)
    {
      x += speedX;
      y += speedY;
    }
  }