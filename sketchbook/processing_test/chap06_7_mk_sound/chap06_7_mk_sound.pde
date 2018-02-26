/// Time-stamp: <2018-02-18 23:49:33 tagashira>
/// @file
/// @brief

//minim library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;    //Define Minim object
AudioOutput out;//Define Audio output
WaveformRenderer waveform;
SineWave sinwave;
SquareWave sqrwave;
TriangleWave triwave;
SawWave sawwave;

// AudioPlayer audio;//AudioPlayerクラスを作成


void setup() {
  minim = new Minim(this);//初期化
  size(512, 200);

  out        = minim.getLineOut(Minim.STEREO);//出力先をoutにするSTEREO,MONO出力が選べる．
  triwave    = new TriangleWave(440, 0.5, out.sampleRate());
  sqrwave = new SquareWave(440, 0.5, out.sampleRate());

  out.addSignal(triwave);//出力Autoに三角波を追加
  out.addSignal(sqrwave);//出力Autoに方形波を追加

  waveform = new WaveformRenderer();//waveformを使えるようにするグラフィック
  out.addListener(waveform);      //グラフィックに出力する
}

void draw() {
  background(0, 0, 0);

  waveform.draw();

}

void stop()
{
  minim.stop();
  super.stop();
}
