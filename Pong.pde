class Pong 
{
  int paddleLeftX, paddleLeftY, paddleW, paddleH;
  int paddleRightX, paddleRightY;
  
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