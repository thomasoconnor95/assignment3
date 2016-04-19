class Pong 
{
  int LeftX, LeftY, Width, Height;
  int RightX, RightY, pSpeed;
  int x, y, w;
  int speedX, speedY;
  int LeftScore = 0;
  int RightScore = 0;
  boolean anyKey;
  boolean LeftUp;
  boolean LeftDown;
  boolean RightUP;
  boolean RightDown;
  
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
    LeftX = 50;
    LeftY = height/2;
    
    RightX = width-50;
    RightY = height/2;
    
    Width = 25;
    Height = 100;
    
    //left paddle
    fill(255,0,0);
    rect(LeftX, LeftY, Width, Height);
    
    //right paddle
    fill(0,0,255);
    rect(RightX, RightY, Width, Height);
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
      LeftScore++;
      speedX = - speedX;
    }//end if
    
    //ball hits left
    if( x < 0+ w/2)
    {
      //right score is incremented
      RightScore++;
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
    if(LeftY < height - (Height/2) && LeftY > Height/2)
    {
      if(LeftUp == true)
      {
        LeftY -= pSpeed;
      }//end if
      
      if(LeftDown == true)
      {
        LeftY += pSpeed;
      }//end if
      
    }//end if
    
    //right paddle
    if(RightY < height - (Height/2) && RightY > Height/2)
    {
      if (RightUP == true)
      {
        RightY -= pSpeed;
      }//end if
      
      if(RightDown == true)
      {
        RightY += pSpeed;
      }//end if
      
    }//end if
    
  }//end paddleMove
  
    //paddleboundary so the paddle doesnt leave the screen
  void paddleBoundary()
  {
    //left paddle
    if(LeftY - Height/2 -1 < 0)
    {
      LeftY += pSpeed;
    }//end if
    
    if( LeftY + Height/2 +1 > height)
    {
      LeftY -= pSpeed;
    }//end if
    
    //right paddle
    if(RightY - Height/2 -1 <0)
    {
      RightY += pSpeed;
    }//end if
    
    if(RightY + Height/2 +1 > height)
    {
      RightY -= pSpeed;
    }//end if
    
  }//end paddleboundary
  
  //when the ball hits off the paddle
  void paddleHit()
  {
    //if the ball hits the left paddle
    if(x - w/2 < LeftX+ Width/2 && y - w/2 < LeftY + Height/2 && y + w/2 > LeftY - Height/2)
    {
      if(speedX < 0)
      {
        speedX = -speedX;
      }//end if
      
    }//end if
    
    //if the ball hits the right paddle
    if(x + w/2 > RightX - Width/2 && y + w/2 > RightY - Height/2 && y - w/2 < RightY + Height/2)
    {
      if (speedX > 0)
      {
        speedX = -speedX;
      }//end if
      
    }//end if
    
  }//end paddleHit
  void keyPressed()
  {
    //left paddle
    if(key == 'w')
    {  
      //if w is pressed left paddle goes up
      LeftUp = true;
    }
    if(key == 's')
    { 
      //if s is pressed the left paddle goes down
      LeftDown = true;
    }
  
    //right paddle movement
    if(key == UP)
    {  
      //if up arrow is pressed, right paddle moves up
      RightUP = true;
    }
    if(key == DOWN)
    {  
      //if down arrow is pressed the right paddle moves downwards
      RightDown = true;
    }
  }//end keyPressed
  
}//end class