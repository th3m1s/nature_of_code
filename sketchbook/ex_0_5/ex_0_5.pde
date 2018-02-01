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

  void step1()
  {
    float stepx, stepy;

    float r = random(1);

    if (r < 0.01) {
      stepx = random(-10, 10);
      stepy = random(-10, 10);
    } else {
      stepx = random(-1, 1);
      stepy = random(-1, 1);
    }

    x += stepx;
    y += stepy;
  }

  float montecarlo()
  {
    while (true) {
      float r1          = random(1);
      float probability = r1;
      float r2          = random(1);

      if (r2 < probability) {
        return r1;
      }
    }
  }

  void step2()
  {
    float stepx, stepy;

    float r = montecarlo();

    if (r < 0.01) {
      stepx = random(-10, 10);
      stepy = random(-10, 10);
    } else {
      stepx = random(-1, 1);
      stepy = random(-1, 1);
    }

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
  // w.step1();
  w.step2();
  w.display();
}
