import java.util.Random;
Random generator;

class Walker
{
  float x, y;

  Walker()
  {
    x = width / 2;
    y = height / 2;
  }

  void display()
  {
    stroke(0);
    point(x, y);
  }

  void step()
  {
    float xnum = (float)generator.nextGaussian();
    float ynum = (float)generator.nextGaussian();
    float sd   = 3;

    float stepx = sd * xnum;
    float stepy = sd * ynum;

    fill(0,10);
    ellipse(x,y,3,3);

    x += stepx;
    y += stepy;
  }

}

Walker w;

void setup()
{
  size(640, 360);
  generator = new Random();
  w = new Walker();
  background(255);
}

void draw()
{
  w.step();
  w.display();
}
