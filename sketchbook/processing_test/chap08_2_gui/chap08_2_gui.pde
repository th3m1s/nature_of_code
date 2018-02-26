import controlP5.*;

//ControlP5のクラスをつくる．
ControlP5 CP5text;

//入出力用文字列
String textValue = "";
String textValue_old = "";

//javaの一行文字列
Textfield CP5Textfield;


void setup(){
  size(512, 512);

  CP5text = new ControlP5(this);
  CP5Textfield=CP5text.addTxtfield("INPUT",100,160,180,20);//関数名x,y,xの終わりの位置，高さ
  CP5text.addButton("submit",0,270,250,40,20);
  textSize(24);
  background(0);
}

void draw(){
  if (){

  }


}
