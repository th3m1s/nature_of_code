class Walker
{
  float x, y;
  float tx, ty;
  float stepx, stepy;

  Walker()
  {
    x  = width / 2;
    y  = height / 2;
    tx = 0;
    ty = 10000;
  }

  void display()
  {
    stroke(0);
    // point(x, y);
    ellipse(x, y, 6, 6);
  }

  void step()
  {
    int stepsize = 1;
    stepx = map(noise(tx), 0, 1, -stepsize, stepsize );
    stepy = map(noise(ty), 0, 1, -stepsize, stepsize);

    x += stepx;
    y += stepy;

    tx += 0.01;
    ty += 0.01;
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
