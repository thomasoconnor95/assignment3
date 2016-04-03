class Pong 
{
  int paddleLeftX, paddleLeftY, paddleW, paddleH;
  int paddleRightX, paddleRightY;
  int x, y, w;
  int speedX, speedY;
  int scoreLeft = 0;
  int scoreRight = 0;
  
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
    ballBounce();
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
  
  void ballBounce()
  {
    //if the ball hits the sides
    if(x > width - w/2); //ball hits the right
    {
      scoreLeft++;
      speedX = - speedX;
    }
    
    //ball hits left
    if( x < 0+ w/2)
    {
      scoreRight++;
    }
    //ball hits top or bottom of the screen
    if( y > width - w/2)
    {
      speedY = - speedY;
    }
    else if (y<0 + w/2)
    {
      speedY = - speedY;
    }
  }//end ballBounce