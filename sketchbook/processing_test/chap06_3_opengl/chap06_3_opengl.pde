/// Time-stamp: <2018-02-04 11:12:07 tagashira>
/// @file
/// @brief

import processing.opengl.*;

//回転する角度
float ang;

void setup() {
  size(800, 800, OPENGL);
  background(0);
  noStroke();
  rectMode(CENTER);
  // colorMode(RGB,255);
}

void draw() {
  background(0);
  //点の光源をあてる．R，G，B，X，Y，Z
  //赤の光源
  pointLight(200, 0, 0, 65, 65, 100);
  //青の光源
  pointLight(0, 0, 200, 65, -65, 100);
  // lights();//3D オブジェクトに光をあてる．
  translate(width / 2, height / 2, -50);
  rotateY(radians(ang));
  rotateX(radians(ang));
  fill(200);
  box(200);
  ang++;
  // noLoop();//for debug
}

void mousePressed() {
  noLoop();// ボタンを押すと停止
}

void mouseReleased() {
  loop();// ボタンが離されたので再開
}

void keyPressed() {
  if (key == ' ' || key == 'p') {
    noLoop();// ボタンを押すと停止
  }
}

void keyReleased(){
  if (key == ' '|| key == 'p'){
  loop();// ボタンが離されたので再開
  }
}
