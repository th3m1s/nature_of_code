/// Time-stamp: <2018-02-03 19:22:37 tagashira>
/// @file
/// @brief

void setup() {
  size(800, 800, P3D);// open display in 3D mode
  // noStroke();
  // rectMode(CENTER);//立方体の基点を中心にする
  colorMode(RGB, 255);
}

float count = 0;
float step  = 2;

void draw() {
  background(0);
  lights();                           //3D オブジェクトに光をあてる．
  translate(width / 2, height / 2, 0);//GW座標の(200,200)をLWの(0,0)とする．
                                      //赤箱の中心
                                      //lw1=gw(200,200,0)
  rotateX(PI / 5 * count * 0.05);
  rotateY(PI / 5 * count * 0.03);
  rotateZ(PI / 5 * count * 0.01);

  // Body
  fill(255, 0, 0);
  rectMode(CENTER);//立方体の基点を中心にする.
  // box(100, 100, 100);//cube
  box(100);//cube

  //Link1
  fill(0, 255, 0);
  pushMatrix();                  //lw1の原点を記録．
  translate(50, 0, 0);           //回転基点を(50,0,0)にする．lw2->lw1(50,0,0)
  rotateY(PI / 5 * count * 0.01);//基点を中心にY軸回転
  translate(50, 0, 0);           //箱を描く点をlwで50ずらす．lw3->lw2(50,0,0)
  box(100, 40, 40);
  popMatrix();//lw1に設定．

  //Link2
  fill(0, 0, 255);
  pushMatrix();                       //lw1の原点を記録．
  translate(-50, 0, 0);               //回転基点を(-50,0,0)にする．lw4->lw1(-50,0,0)
  rotateZ(-1 * PI / 5 * count * 0.01);//基点を中心にZ軸回転
  translate(-50, 0, 0);               //箱を描く点をlwで50ずらす．lw5->lw4(ｰ50,0,0)
  box(100, 40, 40);
  popMatrix();//lw1に設定．



  count = count + step;
  // noLoop();//for debug
}

void keyPressed() {
  if (key == ' ' || key == 'p') {
    noLoop();// ボタンを押すと停止
  }
}

void keyReleased() {
  if (key == ' '|| key == 'p'){
  loop();// ボタンが離されたので再開
  }
}