void setup() {
  size(400, 400);
  colorMode(RGB, 255);
  background(0, 0, 0);
  noStroke();
}

void draw() {
  float r = random(10, 100);//半径を10〜100の間でランダウに決定．
  float x = random(0, 400);
  float y = random(0, 400);
  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);
  float H = random(0, 255);
  fill(R, G, B, H);
  ellipse(x, y, r, r);
}
