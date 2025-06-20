//
// loops.pde
//


//size(400, 400);
//size(800, 800);
fullScreen();

background(0);


for (int i=0; i<50; i++)
{
  float y1 = random(0, height/2);
  float y2 = random(0, height/2);
  
  stroke(0, random(256), random(256));
  strokeWeight(5);
  
  line(0, y1, width/2, y2);
}


for (int i=0; i<100; i++)
{
  float r = random(5, 100);
  float x = random(width/2+r, width-r);
  float y = random(r, height/2-r);
  
  noFill();
  stroke(random(256), random(256), random(256), random(256));
  ellipse(x, y, r*2, r*2);
}


for (int i=0; i<20; i++)
{
  noFill();
  strokeWeight(10);
  stroke(random(256), 255, random(256), random(0, 200));
  
  beginShape();
  vertex(random(0, width/2), random(height/2, height));
  vertex(random(0, width/2), random(height/2, height));
  vertex(random(0, width/2), random(height/2, height));
  endShape(CLOSE);
}


for (int i=0; i<30; i++)
{
  fill(random(256), random(256), random(256), random(256));    
  stroke(random(256), random(256), random(256), random(256)); 
  
  int n = (int)random(10, 30);
  float x = random(width/2+50, width-50);
  float y = random(height/2+50, height-50);
  
  beginShape();
  for (int j=0; j<n; j++)
  {
    PVector v = new PVector(0, random(5, 50));
    v.rotate(2*PI*j/n);
    vertex(x+v.x, y+v.y);
  }
  endShape(CLOSE);
}


saveFrame("drawing.jpg");


