/// Time-stamp: <2018-02-03 19:19:11 tagashira>
/// @file
/// @brief Draw circle at mouse position ver1

void setup() {
  size(400, 400);
  colorMode(RGB, 255);
}

void draw() {
  //何もしない
}

//マウスイベント
//イベントハンドラはdraw()と並行して実行されており，止まることはない．
//ボタンが押されたとき
void mousePressed() {
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
