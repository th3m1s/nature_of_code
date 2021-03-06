class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover() {
    location     = new PVector(random(width), random(height));
    velocity     = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(-0.001, 0.01);
    topspeed     = 10;
  }

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir   = PVector.sub(mouse, location);

    dir.normalize();
    dir.mult(0.0g5);
    acceleration = dir;

    velocity.add(acceleration);
    velocity.limit(topspeed);
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
