class PVector {
  float x;
  float y;

  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }

  void add(PVector v) {
    x = x + v.x;
    y = y + v.y;
  }

  void sub(PVector v) {
    x = x - v.x;
    y = y - v.y;
  }

}

PVector location;
PVector velosity;

void setup() {
  size(640, 360);
  location = new PVector(100, 100);
  velosity = new PVector(2.5, 5);
  background(255);
}

void draw() {
  // background(255);

  location.add(velosity);

  if ((location.x > width) || (location.x < 0)) {
    velosity.x = velosity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velosity.y = velosity.y * -1;
  }

  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16, 16);
}
