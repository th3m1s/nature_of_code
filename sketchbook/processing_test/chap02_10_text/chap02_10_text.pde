size(200, 200);

colorMode(RGB, 256);
background(255, 255, 255);

// フォントサイズ
textSize(24);
fill(0, 0, 0);//文字の色を黒にする．
// 文字の配置（LEFT,CENTER,RIGHT）
textAlign(LEFT);
// 文字の指定
text("hello", width / 2, 50);//x,y,10,100に文字を置く

fill(255, 0, 0);//Red
textAlign(CENTER);
text("こんにちわ", width / 2, 100);

fill(0, 0, 255);//Blue
textAlign(RIGHT);
text("ようこそ",width/2,150);
