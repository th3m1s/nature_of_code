/// Time-stamp: <2018-02-03 19:04:37 tagashira>
/// @file
/// @brief Draw circle at mouse position ver1

void setup() {
  size(400, 400);
  colorMode(RGB, 255);
}

void draw() {
  if (mouseButton == LEFT) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 10, 10);
  }
  if (mouseButton == CENTER) {
    fill(0, 255, 0);
    ellipse(mouseX, mouseY, 10, 10);
  }
  if (mouseButton == RIGHT) {
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 10, 10);
  }
}
