import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class chap05_1_applet_exe extends PApplet {

/// Time-stamp: <2018-02-03 19:22:37 tagashira>
/// @file
/// @brief

public void setup() {
  // open display in 3D mode
  // noStroke();
  // rectMode(CENTER);//\u7acb\u65b9\u4f53\u306e\u57fa\u70b9\u3092\u4e2d\u5fc3\u306b\u3059\u308b
  colorMode(RGB, 255);
}

float count = 0;
float step  = 2;

public void draw() {
  background(0);
  lights();                           //3D \u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306b\u5149\u3092\u3042\u3066\u308b\uff0e
  translate(width / 2, height / 2, 0);//GW\u5ea7\u6a19\u306e(200,200)\u3092LW\u306e(0,0)\u3068\u3059\u308b\uff0e
                                      //\u8d64\u7bb1\u306e\u4e2d\u5fc3
                                      //lw1=gw(200,200,0)
  rotateX(PI / 5 * count * 0.05f);
  rotateY(PI / 5 * count * 0.03f);
  rotateZ(PI / 5 * count * 0.01f);

  // Body
  fill(255, 0, 0);
  rectMode(CENTER);//\u7acb\u65b9\u4f53\u306e\u57fa\u70b9\u3092\u4e2d\u5fc3\u306b\u3059\u308b.
  // box(100, 100, 100);//cube
  box(100);//cube

  //Link1
  fill(0, 255, 0);
  pushMatrix();                  //lw1\u306e\u539f\u70b9\u3092\u8a18\u9332\uff0e
  translate(50, 0, 0);           //\u56de\u8ee2\u57fa\u70b9\u3092(50,0,0)\u306b\u3059\u308b\uff0elw2->lw1(50,0,0)
  rotateY(PI / 5 * count * 0.01f);//\u57fa\u70b9\u3092\u4e2d\u5fc3\u306bY\u8ef8\u56de\u8ee2
  translate(50, 0, 0);           //\u7bb1\u3092\u63cf\u304f\u70b9\u3092lw\u306750\u305a\u3089\u3059\uff0elw3->lw2(50,0,0)
  box(100, 40, 40);
  popMatrix();//lw1\u306b\u8a2d\u5b9a\uff0e

  //Link2
  fill(0, 0, 255);
  pushMatrix();                       //lw1\u306e\u539f\u70b9\u3092\u8a18\u9332\uff0e
  translate(-50, 0, 0);               //\u56de\u8ee2\u57fa\u70b9\u3092(-50,0,0)\u306b\u3059\u308b\uff0elw4->lw1(-50,0,0)
  rotateZ(-1 * PI / 5 * count * 0.01f);//\u57fa\u70b9\u3092\u4e2d\u5fc3\u306bZ\u8ef8\u56de\u8ee2
  translate(-50, 0, 0);               //\u7bb1\u3092\u63cf\u304f\u70b9\u3092lw\u306750\u305a\u3089\u3059\uff0elw5->lw4(\uff7050,0,0)
  box(100, 40, 40);
  popMatrix();//lw1\u306b\u8a2d\u5b9a\uff0e



  count = count + step;
  // noLoop();//for debug
}

public void keyPressed() {
  if (key == ' ' || key == 'p') {
    noLoop();// \u30dc\u30bf\u30f3\u3092\u62bc\u3059\u3068\u505c\u6b62
  }
}

public void keyReleased() {
  if (key == ' '|| key == 'p'){
  loop();// \u30dc\u30bf\u30f3\u304c\u96e2\u3055\u308c\u305f\u306e\u3067\u518d\u958b
  }
}
  public void settings() {  size(800, 800, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "chap05_1_applet_exe" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
