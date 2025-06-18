//
// bounce.pde
//


ArrayList<Ball> balls;


void setup()
{
    size(800, 800);
    
    balls = new ArrayList<Ball>();

    for (int i=0; i<10; i++)
        balls.add(new Ball());
}


void draw()
{
    background(100);

    for (Ball ball : balls)
        ball.display();
}


void keyPressed()
{
    for (int i=0; i<10; i++)
        balls.add(new Ball());
}


class Ball
{
    float x;
    float y;
    float vx;
    float vy;
    float radius;
    int c;

    Ball()
    {
        x = width/2;
        y = height/2;
        vx = random(-5, 5);
        vy = random(-5, 5);
        radius = random(20, 80);
        c = color(random(256), random(256), random(256));
    }

    void display()
    {
        fill(c);
        ellipse(x, y, radius*2, radius*2);

        x += vx;
        y += vy;

        if (x<radius || x>width-radius)
            vx *= -1;

        if (y<radius || y>height-radius)
            vy *= -1;
    }
}








