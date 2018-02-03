// Time-stamp: <2018-02-03 15:56:44 tagashira>
// @file
// @brief moving line at random.

void setup() {
  size(400, 400);
  colorMode(RGB, 255);
  strokeWeight(5);
  stroke(255, 0, 0);
}

//初期位置
float sx = random(0, 400);
float sy = random(0, 400);

void draw() {
  background(0, 0, 0);
  float x = random(0, 400);
  float y = random(0, 400);
  line(sx, sy, x, y);
  sx = x;
  sy = y;
}
