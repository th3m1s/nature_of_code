/// Time-stamp: <2018-02-03 20:34:04 tagashira>
/// @file
/// @brief

PImage img;//表示用イメージ
//カットシステムのホームページのトップ画像
String URL = "http://www.cutt.co.jp/toppage/cuttytle_3.png";

//URLで示された画像をここで読み込む．
img = loadImage(URL, "PNG");

//ディスプレイウィンドウを作る．
println(img.width);
println(img.height);
// size(img.width, img.height);
// size(512, 512);//for debug
// image(img,0,0);



//ハイパーリンク
link(URL);
