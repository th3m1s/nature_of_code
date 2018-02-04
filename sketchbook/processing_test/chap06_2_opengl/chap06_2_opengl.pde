/// Time-stamp: <2018-02-04 10:51:18 tagashira>
/// @file
/// @brief

import processing.opengl.*;

void setup(){
  size(400, 400, OPENGL);
  // noStroke();
  rectMode(CENTER);
  colorMode(RGB,255);
}

float count = 0;
float step  = 2;

void draw() {
  background(0);
  lights();                           //3D オブジェクトに光をあてる．
  translate(width / 2, height / 2, 0);//GW座標の(200,200)をLWの(0,0)とする．
  rotateX(PI / 5 * count * 0.05);
  rotateY(PI / 5 * count * 0.03);
  rotateZ(PI / 5 * count * 0.01);
  fill(255, 0, 0);
  box(100, 100, 100);//cube
  // sphere(50);        //sphere
  translate(0, 0, -150);
  fill(0, 255, 0);
  box(30);
  count = count + step;
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
