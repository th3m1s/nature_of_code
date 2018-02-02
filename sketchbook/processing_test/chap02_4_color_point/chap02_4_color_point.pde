size(300, 300);

// colorMode(mode,range)
// colorMode(HSB,255);
colorMode(RGB, 255);

int i, j;
color c;

background(0, 0, 0);// バックグラウンドを黒にする．

noStroke();

for (i = 0; i < 255; i++) {
  for (j = 0; j < 255; j++) {
    // c = color(i, j, 0);// R,Gのみ色を変化．Bは0に固定．
    // stroke(c);
    stroke(i, j, 0, 100);
    strokeWeight(1);
    point(i, j);
  }
}
