import java.util.Random;
Random generator;

void setup(){
  size(640,360);
  generator = new Random();
  background(0);
}

void draw(){
  float xnum = (float) generator.nextGaussian();
  float ynum = (float) generator.nextGaussian();
  float sd = 60;
  float xmean = width/2;
  float ymean = height/2;

  float x = sd*xnum + xmean;
  float y = sd*ynum + ymean;

  noStroke();

  fill(255,10);

  ellipse(x,y,16,16);
}
