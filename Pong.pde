class Pong 
{
  int paddleLeftX, paddleLeftY, paddleW, paddleH;
  int paddleRightX, paddleRightY, paddleS;
  int x, y, w;
  int speedX, speedY;
  int scoreLeft = 0;
  int scoreRight = 0;
  boolean anyKey;
  boolean upLeft;
  boolean downLeft;
  boolean upRight;
  boolean downRight;
  
  Pong()
  {
    run();
  }//end pong
  
  void run()
  {
    draw();
    ballMove();
    ballBounce();
    paddleMove();
    paddleBoundary();
    paddleHit();
  }//end run
  
  void draw()
  {
    drawPaddle();
    drawBall();
  }//end draw
  
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
  }//end drawPaddle
  
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
  }//end drawBall
  
  void ballMove()
  {
    if(anyKey==false)
    {
      x += speedX;
      y += speedY;
    }//end if
  }//end ballMove
  
  void ballBounce()
  {
    //if the ball hits the sides
    if(x > width - w/2); 
    //ball hits the right
    {
      //left score is incremented
      scoreLeft++;
      speedX = - speedX;
    }//end if
    
    //ball hits left
    if( x < 0+ w/2)
    {
      //right score is incremented
      scoreRight++;
    }//end if
    
    //ball hits top or bottom of the screen
    if( y > width - w/2)
    {
      speedY = - speedY;
    }//end if
    
    else if (y<0 + w/2)
    {
      speedY = - speedY;
    }//end else if
    
  }//end ballBounce
  
  void paddleMove()
  {
    //left paddle
    if(paddleLeftY < height - (paddleH/2) && paddleLeftY > paddleH/2)
    {
      if(upLeft == true)
      {
        paddleLeftY -= paddleS;
      }//end if
      
      if(downLeft == true)
      {
        paddleLeftY += paddleS;
      }//end if
      
    }//end if
    
    //right paddle
    if(paddleRightY < height - (paddleH/2) && paddleRightY > paddleH/2)
    {
      if (upRight == true)
      {
        paddleRightY -= paddleS;
      }//end if
      
      if(downRight == true)
      {
        paddleRightY += paddleS;
      }//end if
      
    }//end if
    
  }//end paddleMove
  
    //paddleboundary so the paddle doesnt leave the screen
  void paddleBoundary()
  {
    //left paddle
    if(paddleLeftY - paddleH/2 -1 < 0)
    {
      paddleLeftY += paddleS;
    }//end if
    
    if( paddleLeftY + paddleH/2 +1 > height)
    {
      paddleLeftY -= paddleS;
    }//end if
    
    //right paddle
    if(paddleRightY - paddleH/2 -1 <0)
    {
      paddleRightY += paddleS;
    }//end if
    
    if(paddleRightY + paddleH/2 +1 > height)
    {
      paddleRightY -= paddleS;
    }//end if
    
  }//end paddleboundary
  
  //when the ball hits off the paddle
  void paddleHit()
  {
    //if the ball hits the left paddle
    if(x - w/2 < paddleLeftX+ paddleW/2 && y - w/2 < paddleLeftY + paddleH/2 && y + w/2 > paddleLeftY - paddleH/2)
    {
      if(speedX < 0)
      {
        speedX = -speedX;
      }//end if
      
    }//end if
    
    //if the ball hits the right paddle
    if(x + w/2 > paddleRightX - paddleW/2 && y + w/2 > paddleRightY - paddleH/2 && y - w/2 < paddleRightY + paddleH/2)
    {
      if (speedX > 0)
      {
        speedX = -speedX;
      }//end if
      
    }//end if
    
  }//end paddleHit
  
}//end class