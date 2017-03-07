import controlP5.*;
ControlP5 cp5;

float r = 100;
float magnitude = 100;
float theta = 0;
float x;
float y;

float n = 20;
float d = 3;
float c = 50;


float k = 5;

void setup() {
  size(600, 600);
  cp5 = new ControlP5(this);
  cp5.addSlider("magnitude").setPosition(20, 20).setRange(0, 400);  
  cp5.addSlider("n").setPosition(20, 40).setRange(0, 400);
  cp5.addSlider("d").setPosition(20, 60).setRange(0, 400);

}

void draw() {
  background(0);
  
  
  k=n/d;
  
  pushMatrix();
  translate(width/2, height/2);

  noFill();
  beginShape();

  for (int i=0; i<250*d ; i= i+1) {

    theta = map(i, 0, 250, 0, TWO_PI);

    r = magnitude * cos(k*theta) ;
    x = cos(theta)*r;
    y = sin(theta)*r;


    stroke(255);

    vertex(x, y);
    //point(x,y);
  }

  endShape(CLOSE);
  popMatrix();
}