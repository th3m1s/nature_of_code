/// Time-stamp: <2018-02-21 12:22:40 tagashira>
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

  if (client!=null){
    input=client.readStringUntil('\n');
    mes="->"+input;
    server.write(mes);
    println(input);
  }

}
