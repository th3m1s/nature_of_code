void setup()
{
  size(640, 360);
  background(255);
  noLoop();
}

void draw()
{

  loadPixels();

  float xoff = 0.0;

  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      // float bright          = random(255);
      float bright          = map(noise(xoff, yoff), 0, 1, 0, 255);
      pixels[x + y * width] = color(bright);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  updatePixels();
}
