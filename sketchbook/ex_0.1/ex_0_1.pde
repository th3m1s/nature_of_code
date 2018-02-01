class Walker {
  // int x;
  // int y;
  float x,y;

  Walker(){
    x=width/2;
    y=height/2;
  }

  void display(){
    stroke(0);
    point(x,y);
  }

  void step1(){
    int choice = int(random(4));

    if(choice == 0){
      x++;
    }else if(choice==1){
      x--;
    }else if(choice==2){
      y++;
    }else{
      y--;
    }
  }

  void step2(){
    int stepx = int(random(3))-1; //-1,0,1
    int stepy = int(random(3))-1; //-1,0,1

    x +=stepx;
    y +=stepy;
  }

  void step3(){
    float stepx = random(-1,1); //-1.0 ~ 1.0
    float stepy = random(-1,1);

    x +=stepx;
    y +=stepy;
  }

}


Walker w;

void setup(){
  size(640,360);
  w = new Walker();
  background(255);
}

void draw(){
  // w.step1();
  // w.step2();
  w.step3();
  w.display();
}
