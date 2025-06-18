//
// movement.pde
//


float xPlayer = 200;
float yPlayer = 200;


void setup()
{
  size(400, 400);  
}


void draw()
{
  background(50);  
  
  fill(0, 255, 0);
  ellipse(xPlayer, yPlayer, 50, 50);
}


void keyPressed()
{
  float change = 10;
  
  if (keyCode == RIGHT)
  {
     xPlayer += change;
  }
  else if (keyCode == LEFT)
  {
     xPlayer -= change; 
  }
  else if (keyCode == UP)
  {
     yPlayer -= change;    
  }
  else if (keyCode == DOWN)
  {
     yPlayer += change;    
  }
  
}

