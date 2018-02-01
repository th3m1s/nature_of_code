class PVector {
  float x;
  float y;
  float z;

  PVector(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
  }

  void add(PVector v) {
    x = x + v.x;
    y = y + v.y;
    z = z + v.z;
  }

}

PVector location;
PVector velosity;

void setup() {
  size(640, 360, P3D);
  location = new PVector(100, 100, 100);
  velosity = new PVector(2.5, 5, 1);
  background(255);
}

void draw() {
  background(255);
  translate(width / 2, height / 2, 0);
  rotateY(0.25);
  noFill();
  box(100);

  location.add(velosity);

  if ((location.x > 100) || (location.x < 0)) {
    velosity.x = velosity.x * -1;
  }
  if ((location.y > 100) || (location.y < 0)) {
    velosity.y = velosity.y * -1;
  }
  if ((location.z > 100) || (location.z < 0)) {
    velosity.z = velosity.z * -1;
  }

  stroke(0);
  fill(175);
  // ellipse(location.x, location.y, 16, 16);
  translate(location.x, location.y, location.z);
  sphere(3);
}


