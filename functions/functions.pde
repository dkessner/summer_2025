//
// functions.pde
//


void setup()
{
  size(400, 400);
}


void draw()
{
  background(0);

  drawFace(100, 200);
  drawFace(300, 200);
  
  drawFace(mouseX, mouseY);
}


void drawFace(int centerX, int centerY)
{
  fill(234, 163, 28);
  ellipse(centerX, centerY, 200, 200);
  
  fill(0);
  ellipse(centerX-25, centerY-25, 20, 60);
  ellipse(centerX+25, centerY-25, 20, 60);
  ellipse(centerX, centerY+50, 50, 50);  
}

