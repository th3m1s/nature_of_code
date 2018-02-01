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

  void mult(float n) {
    x = x * n;
    y = y * n;
  }

  void div(float n) {
    x = x / n;
    y = y / n;
  }

  float mag() {
    return sqrt(x * x + y * y);
  }

  void normalize() {
    float m = mag();
    if (m != 0) {
      div(m);
    }
  }
}

class Mover {

  PVector location;
  PVector velocity;

  Mover(){
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
}

  void update() {
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }

  void checkEdge() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

Mover mover;

void setup() {
  size(640, 360);
  background(255);
  mover = new Mover();
}

void draw() {
  background(255);

  mover.update();
  mover.checkEdge();
  mover.display();

}
