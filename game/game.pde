//
// game.pde
//


int gameState = 0;

float targetX = 200;
float targetY = 200;

PFont myFont;
PImage cat;


void setup()
{
  size(800, 800);
  noCursor();
  
  targetX = random(0, width);
  targetY = random(0, height);
  
  myFont = createFont("Courier", 32);

  cat = loadImage("cat.png");
  cat.resize(200, 200);
}


void draw()
{
  background(50);

  if (gameState == 0)
    drawStart();
  else if (gameState == 1)
    drawGame();
  else if (gameState == 2)
    drawEnd();
}


void drawStart()
{
  background(255);
  
  fill(0);
  textFont(myFont);
  textSize(50);
  textAlign(CENTER);
  text("My Awesome Game", width/2, height/2);
  
  textSize(30);
  text("Press any key", width/2, height*.75);
}


void drawGame()
{
  background(#52E862);
  
  // draw the target
  fill(0, 0, 255);
  ellipse(targetX, targetY, 50, 50);
  
  // draw the cat at the cursor location
  imageMode(CENTER);
  image(cat, mouseX, mouseY);
  
  if (dist(targetX, targetY, mouseX, mouseY) < 25)
    gameState = 2;
}


void drawEnd()
{
  background(0, 255, 0);
  text("You win!", width/2, height/2);
}


void keyPressed()
{
  if (gameState == 0)
  {
     gameState = 1; 
  }
}


