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

void
setup() {
  size(640, 360);
}

void draw() {
  background(255);
  PVector mouse  = new PVector(mouseX, mouseY);
  PVector center = new PVector(width / 2, height / 2);
  mouse.sub(center);

  mouse.normalize();
  mouse.mult(50);
  fill(0);
  // rect(0, 0, mouse.mag(), 10);

  translate(width / 2, height / 2);//move origin
  line(0, 0, mouse.x, mouse.y);
}
