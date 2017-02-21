float angle=random(0, 50);
float angle2=35;

float animFacAngle;
float opacityFac;


void setup() {
  size(400, 400);
}

void draw() {
  background(#27AE60);
  pushMatrix();
  translate(width*0.5, height);
  branch(100);
  popMatrix();

  animFacAngle =  sin(millis()*0.001) * 5;
}

void branch(float len) {
  stroke(255, 255, 255);
  line(0, 0, 0, - len);
  translate(0, -len);

  if (len>4) {
    pushMatrix();
    rotate(radians(angle+animFacAngle));
    branch(len*0.67);
    noStroke();

    opacityFac = map(animFacAngle, -5, 5, 0, 255);

    fill(255, 0, 0);
    ellipse(0, 0, animFacAngle, animFacAngle);
    popMatrix();

    pushMatrix();
    rotate(radians(-angle+animFacAngle));
    branch(len*0.67);
    popMatrix();
  }
}