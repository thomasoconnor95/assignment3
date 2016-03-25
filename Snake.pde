class Snake
{
  float x =0;
  float y=0;
  
  Pong()
  {
    
  }
  void run()
  {
    display();
  }
  void display()
  {
    image(bg,x,y);
  }
}