/// Time-stamp: <2018-02-16 17:46:45 tagashira>
/// @file
/// @brief

//minim library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;//Define Minim object
AudioPlayer audio;//AudioPlayerクラスを作成

void setup()
{
  size(100, 100);
  minim = new Minim(this);  //初期化
  //sample.mp3を読み込む 512*byteのデータバッファを使用
  audio=minim.loadFile("./BayerischeMotorenWerkeAktiengesellschaft.mp3",512*4);//ファイルから音楽データを与える．
  audio.play();//Play sound
}

void draw()
{
  background(0);
}

void stop()
{
  audio.close();  //サウンドデータを終了
  minim.stop();
  super.stop();
}
