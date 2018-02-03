/// Time-stamp: <2018-02-03 19:05:48 tagashira>
/// @file
/// @brief Display input key

void setup() {
  size(400, 400);
  colorMode(RGB, 255);
}

void draw() {
  //何もしない
}

//Keyイベント
//Keyが押されたとき
void keyPressed() {
  float x = random(0, 400);
  float y = random(0, 400);

  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);

  fill(R, G, B);
  textSize(24);
  text(key, x, y);
}
