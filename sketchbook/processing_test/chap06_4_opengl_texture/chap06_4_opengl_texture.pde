/// Time-stamp: <2018-02-04 12:13:15 tagashira>
/// @file
/// @brief

PImage texture;
float rotx = PI / 4;
float roty = PI / 4;

void setup() {
  size(640, 360, OPENGL);
  //textureの読み込み
  texture = loadImage("texture.jpg");
  textureMode(NORMALIZED);
}

void draw() {
  background(0);
  noStroke();
  translate(width / 2, height / 2, -100);
  rotateX(rotx);
  rotateY(roty);
  scale(90);           //90倍する
  TextureCube(texture);//箱を作る．
}

void TextureCube(PImage texture) {
  //四角形なので４つの頂点を使うことを示す．
  //形の定義開始
  beginShape(QUADS);
//texture画像を設定
texture(texture);

//+Z,"front" face
vertex(x, y, z, u, v);



}
