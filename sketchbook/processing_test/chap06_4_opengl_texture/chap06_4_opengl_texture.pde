/// Time-stamp: <2018-02-16 03:38:28 tagashira>
/// @file
/// @brief

PImage texture;
float rotx = PI / 4;
float roty = PI / 4;

void setup() {
  size(640, 360, OPENGL);
  //textureの読み込み
  texture = loadImage("texture.jpg");
  textureMode(NORMAL);
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
  vertex(-1, -1, 1, 0, 0);//A
  vertex(1, -1, 1, 1, 0); //B
  vertex(1, 1, 1, 1, 1);  //C
  vertex(-1, 1, 1, 0, 1); //E

  //-Z,"back" face
  vertex(1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1, 1, -1, 1, 1);
  vertex(1, 1, -1, 0, 1);

  //+Y,"bottom" face
  vertex(-1, 1, 1, 0, 0);
  vertex(1, 1, 1, 1, 0);
  vertex(1, 1, -1, 1, 1);
  vertex(-1, 1, -1, 0, 1);

  //-Y,"top" face
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, -1, 1, 1, 1);
  vertex(-1, -1, 1, 0, 1);

  //+X,"right" face
  vertex(1, -1, 1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, 1, -1, 1, 1);
  vertex(1, 1, 1, 0, 1);

  //-X,"left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1, 1, 1, 0);
  vertex(-1, 1, 1, 1, 1);
  vertex(-1, 1, -1, 0, 1);

  endShape();
  //形の定義終了

}


void mouseDragged(){
  float rate = 0.01;
  rotx +=(pmouseY-mouseY)*rate;
  roty +=(pmouseX-mouseX)*rate;
}
