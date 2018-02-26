/// Time-stamp: <2018-02-21 13:39:59 tagashira>
/// @file
/// @brief

import processing.net.*;

//クライアントオブジェクトを作る．
Client client;
float Val;

void setup() {
  size(100, 100);
  client = new Client(this, "127.0.01", 2000);
  background(0);
}

void draw() {
  //Do nothing
}

void mousePressed() {
  int dmy;
  Val = random(0, 255);
  dmy = (int)Val;
  client.write(String.valueOf(dmy) + "\n");
}

void mouseDragged() {
  int dmy;
  Val = mouseY - pmouseY;
  if (Val > 255) {
    Val = 0;
  } else if (Val < 0) {
    Val = 255;
  }

  dmy = (int)Val;
  client.write(String.valueOf(dmy) + "\n");
}
