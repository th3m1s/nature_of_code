size(400, 400);
colorMode(RGB, 255);
background(255, 255, 255);
noStroke();

int angle = 30;
float rad;
int box = 100;
translate(200, 200);

for (int i = 0; i < 12; i++) {
  fill(0, i * 20, 0);
  rect(0, 0, box, box);
  rad = radians(angle);//角度(deg)をradianに変換する．
  rotate(rad);
}

//この他にも，scale()という関数あり．
