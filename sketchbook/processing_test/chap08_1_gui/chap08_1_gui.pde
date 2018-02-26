import controlP5.*;

//ControlP5オブジェクトの作成．
ControlP5 button1;
ControlP5 button2;
ControlP5 slider;

int Sv =100;
int Sv_old = 100;

void setup(){
  size(512, 512);
  //butto1の設定
  button1=new ControlP5(this);
  //オブジェクトのボタンのアクセスネーム，関数の名前となる．
  //x,y位置．w,hボタンの大きさ．
  button1.addBang("b1",40,100,120,40);
  //b1の下に書くテキスト．
  button1.controller("b1").setLabel("button1");

  // create a new button with name 'button1'
  button1.addButton("button1").setValue(0).setPosition(40,100).setSize(120,40);


  // //butto2の設定
  // button2=new ControlP5(this);
  // //オブジェクトのボタンのアクセスネーム，関数の名前となる．
  // //x,y位置．w,hボタンの大きさ．
  // button2.addBang("b2",40,200,120,40);
  // //b2の下に書くテキスト．
  // button2.controller("b2").setLabel("button2");

  // //sliderの設定
  // slider=new ControlP5(this);
  // //sliderの設定を対応させる．min,max,初期値,x,y,w,h
  // slider.addSlider("Sv",0,200,100,140,300,150,20);
  // slider.controller("Sv").setLabel("Slider Val");
}

void draw(){
  background(0);
  if (Sv != Sv_old){
    println("Slider Value"+Sv);
  }
  Sv_old = Sv;
}

void b1(){
  int theColor = (int)random(255);
  println("button1 press "+theColor);
}

void b2(){
  int theColor = (int)random(255);
  println("button2 press "+theColor);
}
