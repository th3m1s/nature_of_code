size(300, 300);

PImage b;

// 画像の読み込み．返り値はPImageクラス．
b = loadImage("screenshot_sel.jpg");

// PImageをx,yに配置
image(b, 0, 0);
