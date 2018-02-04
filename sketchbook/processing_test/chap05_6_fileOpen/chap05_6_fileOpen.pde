/// Time-stamp: <2018-02-04 10:10:18 tagashira>
/// @file
/// @brief バージョン違いのためかうまく動かない．とりあえず，スキップ

PImage img;//読み込むイメージのオブジェクト．
String loadPath = null;//ファイルパス，初期値はあNULL

void setup() {
  size(512, 512);

}

void draw() {
  fill(0, 0, 0);
  textSize(24);
  text("Jpegファイルを選択して下さい", 20, 40);
  //ファイルパスがNULLでないとき画像を表示．
  if (loadPath != null) {
    if (filechk(loadPath, "jpg") || filechk(loadPath, "jpeg")) {
      img = loadImage(loadPath);
      image(img, 0, 0);
    }
  }
}

//マウスが押されたらファイルチューザーを開く．
void mousePressed() {
  // loadPath = selectInput();//ファイルチューザーを開く．
  selectInput("Select a file to process:", "filechk");//ファイルチューザーを開く．
  //
  if (loadPath == null) {
    println("No file was selected...");
  }
}

//選択したファイルネームの拡張子がchk拡張子かどうかチェック．
boolean filechk(String name, String chk) {
  boolean ans = false;
  //拡張子を．以降の文字とする．
  String ext = name.substring(name.lastIndexOf('.') + 1);
  //拡張子を小文字にする．
  ext.toLowerCase();
  //拡張子がchkと等しいならTRUEを返す．
  if (ext.equals(chk)) {
    ans = true;
  }
  return ans;
}
