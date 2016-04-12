class Snake 
{
  ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
  int w = 30;
  int h = 30;
  int bs = 20;
  
  Snake()
  {
    
  }
  void setup()
  {
    x.add(5);
    y.add(5);
  }
  void run()
  {
    display();
  }
  void display()
  {
    background(255);
    for (int i = 0; i < w;i ++)
    {
      line(i*bs, 0, i*bs, height);
    }
    for( int i = 0; i < h; i++)
    {
      line(0, i*bs, width, i*bs);
    }
    for( int i = 0; i < x.size(); i++);
    {
      fill(0,255,0);
      rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
    }
  }
}