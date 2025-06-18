//
// animation.pde
//


int x = 0;


void setup()
{
  size(400, 400);  
}


void draw()
{
  background(0);
  ellipse(x, 200, 100, 50);
  x = x+1;
  
  if (x > width + 50)
  {
    x = -50;
  }  
}

