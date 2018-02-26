/// Time-stamp: <2018-02-18 20:38:42 tagashira>
/// @file
/// @brief

//video library
import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  //PCに接続されたビデオのリストを表示
  String[] cameras = Capture.list();
  for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
  }
  //キャプチャーする映像の設定変更は
  //複数ある場合は指定
  video = new Capture(this, cameras[0]);
  video.start();
}

void draw() {
  //videoを読み込む
  video.read();
  //映像を画面に配置する．基点x，y．終点x，y．
  image(video,0,0);
  filter(THRESHOLD,0.5);//白黒2値化
}