size(400, 400);
colorMode(RGB, 255);
background(255, 255, 255);
noStroke();

int box = 40;
for (int i = 0; i < 400; i = i + box) {
  fill(99, i, 99, map(i, 0, 255, 0, 399));//Add gradation
  rect(0, 0, box, box);
  translate(box, box);
}
