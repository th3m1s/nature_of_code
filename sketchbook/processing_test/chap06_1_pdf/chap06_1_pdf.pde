/// Time-stamp: <2018-02-04 10:30:31 tagashira>
/// @file
/// @brief

import processing.pdf.*;

size(400, 400, PDF, "pdftest.pdf");//PDFのサイズとファイル名
colorMode(RGB, 255);

background(255, 255, 255);
noStroke();

int angle = 30;
float rad;
int box = 100;

//Textの印字．日本語不可．フォントの明示．
PFont font = createFont("Times New Roman", 24);
textFont(font, 24);
fill(0, 0, 0);
text("PDE TEST", 10, 30);

translate(200, 200);
for (int i = 0; i < 12; i++) {
  fill(0, i * 20, 0);
  rect(0, 0, box, box);
  rad = radians(angle);
  rotate(rad);

}

//close display window
exit();
