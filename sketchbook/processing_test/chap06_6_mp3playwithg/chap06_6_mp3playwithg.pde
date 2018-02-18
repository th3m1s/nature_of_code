/// Time-stamp: <2018-02-16 18:14:24 tagashira>
/// @file
/// @brief

//minim library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;      //Define Minim object
AudioPlayer audio;//AudioPlayerクラスを作成

void setup() {
  minim = new Minim(this);//初期化
  size(640, 400);

  //sample.mp3を読み込む 512*byteのデータバッファを使用
  audio = minim.loadFile("./intelinin.mp3", 512 * 4);//ファイルから音楽データを与える．
  audio.play();                                      //Play sound
  noStroke();
  colorMode(RGB, 255, 255, 255);
}

void draw() {
  background(0, 0, 0);

  //audio にバッファリングされているサイズ分ループされる
  //audio再生中にバッファは移動していく，
  for (int i = 0; i < audio.left.size() - 1; i++) {
    //色をランダムに決める．
    float RL = random(0, 255);
    float GL = random(0, 255);
    float BL = random(0, 255);

    float RR = random(0, 255);
    float GR = random(0, 255);
    float BR = random(0, 255);

    //左右のボリュームを得る．
    float Lv = audio.left.get(i) * 500;
    float Rv = audio.left.get(i) * 500;

    fill(RL, GL, BL);
    ellipse(200, 200, Lv, Lv);

    fill(RR, GR, BR);
    ellipse(400, 200, Rv, Rv);

  }

  if (!audio.isPlaying()){
    exit();
  }


}

void stop()
{
  audio.close();  //サウンドデータを終了
  minim.stop();
  super.stop();
}
