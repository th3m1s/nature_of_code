/// Time-stamp: <2018-02-21 13:24:18 tagashira>
/// @file
/// @brief

import processing.net.*;

//サーバーオブジェクトを作る．
Server server;
//クライアントオブジェクトを作る．
Client client;

void setup() {
  size(512, 512);
  //サーバーを設定．port番号は2000とする．
  server = new Server(this, 2000);
}

void draw() {
  client = server.available();
  String mes;
  String input;
  int x;

  if (client!=null){
    input=client.readStringUntil('\n');
    input=trim(input);
    mes="->"+input;
    // server.write(mes);
    // println(input);
    x=Integer.valueOf(input);//文字列->数字に変換
    background(x);

  }
}