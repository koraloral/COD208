void setup() {
  size(1400, 900, P3D);

  camera(200, -200, 300, width/2, height/2, 0, 0, 1, 0 );
}

int i=0;
void planet(float speed, float Distance, float size, float r) {
  pushMatrix();
  stroke(180);
  rotateY(frameCount*PI/speed * 0.01);
  translate(Distance, 0, 0);
  fill(r);
  sphere(size);
  popMatrix();
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2 );

  //Güneş
  pushMatrix();
  stroke(237, 155, 48);
  rotateY(frameCount * PI/12 * 0.01);
  fill(237, 155, 48);
  sphere(60);
  stroke(255);
  noFill();
  popMatrix();


  //Dünya
  pushMatrix();
  stroke(136, 180, 220);
  rotateY(frameCount * -PI/6 * 0.01);
  translate(220, 0, 0);
  fill(136, 180, 220);
  sphere(20);

  //Ay
  stroke(200, 200, 100);
  rotateY(frameCount * -PI/3 * 0.01);
  translate(30, 0, 0);
  fill(200, 200, 100);
  sphere(5);
  popMatrix();

  planet(2, 80, 10, 0);
  planet(3, 130, 20, 160);
  //Dünya
  planet(4, 285, 15, 120);
  planet(5, 370, 35, 180);
  planet(6, 460, 22, 200);
  planet(10, 550, 22, 200);
  planet(15, 620, 20, 200);
  planet(20, 670, 8, 200);
}