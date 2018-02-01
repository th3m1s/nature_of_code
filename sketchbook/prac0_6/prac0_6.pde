class Walker
{
  // int x;
  // int y;
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

  float montecarlo_custom()
  {
    while (true) {
      float r1          = random(1);
      float probability = r1 * r1;
      float r2          = random(1);

      if (r2 * r2 < probability) {
        return probability;
      }
    }
  }

  void step()
  {
    float stepsize = montecarlo_custom()*10;

    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);

    x += stepx;
    y += stepy;
  }

}

Walker w;

void setup()
{
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw()
{
  w.step();
  w.display();
}
