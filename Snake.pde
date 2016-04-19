class Snake
{
  ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
  int w = 30;
  int h = 30;
  int bs = 20;
  int i;
  int direction;
  int[] directionX = {0,0,1,-1}, directionY = {1,-1,0,0};
  int foodX = 12;
  int foodY = 10;
  boolean gameover = false;
  
  Snake()
  {
    run();
  }//end snake
  
  void setup()
  {
    x.add(5);
    y.add(5);
  }//end setup
  
  void run()
  {
    draw();
  }//end run
  
  void draw()
  {
    background(255);
    
    //squares for the snake to move around in
    for (int i = 0; i < w;i ++)
    {
      line(i*bs, 0, i*bs, height);
    }//end for
    
    for( int i = 0; i < h; i++)
    {
      line(0, i*bs, width, i*bs);
    }//end for
    
    for( int i = 0; i < x.size(); i++);
    {
      fill(0,255,0);
      rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
    }//end for
    
    //if the game is starting
    if(!gameover)
    {
      fill(255,0,0);
      rect(foodX*bs, foodY*bs, bs, bs); //apple
      if (frameCount %5 ==0)
      {
        x.add(0,x.get(0) + directionX[direction]);
        y.add(0,y.get(0) + directionY[direction]);
        
        //if the snake goes passed the edges of screen game over
        if(x.get(0)< 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h)
        {
          gameover = true;
        }//end if
        
        //if snake crashes into itself
        for(int i = 1; i < x.size(); i++)
        {
          if(x.get(0) == x.get(i) &&y.get(0) == y.get(i))
          {
            gameover = true;
          }//end if
        }//end for
        
        //if snake touches apple
        if(x.get(0) ==foodX && y.get(0)==foodY)
        {
          //apple spawns in a random place
          foodX = (int)random(0,w);
          foodY = (int)random(0,h);
        }//end if
        else
        {
          x.remove(x.size()-1);
          y.remove(y.size()-1);
        }//end else
        
      }//end if
      
    }//end if
    
    else
    {
      fill(0);
      textSize(30);
      textAlign(CENTER);
      text("Game Over, Press space to restart", width/2, height/2);
      
      if(keyPressed && key ==' ')
      {
        //clears the screen
        x.clear();
        y.clear();
        x.add(5);
        y.add(5);
        gameover = false;
      }//end if
      
    }//end else
     
  }//end draw method
  
  void keyPressed()
  {
    //controls to move the snake
    int newdir = key ==DOWN ? 0 : (key==UP ? 1 : (key==RIGHT ? 2 : (key==LEFT ? 3 : -1)));
    if (newdir != -1 && (x.size() <= 1 || !(x.get(1)== x.get(0) + directionX[newdir] && y.get(1)==y.get(0)+ directionY[newdir])))
    {
      direction = newdir;
    }//end if
    
  }//end keyPressed()
  
}//end class Snake