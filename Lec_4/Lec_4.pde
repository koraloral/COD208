float r = 100;
float magnitude = 100;
float theta = 0;
float x;
float y;

float n = 20;
float d = 3;
float c = 50;

float animFacAngle;

float k = 3;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  
  animFacAngle = sin(millis()*0.001) *150 ;
  c = animFacAngle;
  
  k=n/d;
  
  pushMatrix();
  translate(width/2, height/2);

  noFill();
  beginShape();

  for (int i=0; i<250*d ; i= i+1) {

    theta = map(i, 0, 250, 0, TWO_PI);

    r = magnitude * cos(k*theta) + c;
    x = cos(theta)*r;
    y = sin(theta)*r;


    stroke(255);

    vertex(x, y);
    //point(x,y);
  }

  endShape(CLOSE);
  popMatrix();
}