float angle = 0;
float r;

Table table;

float x;
float y;
float z;

float phi;
float theta;

float lon = 144.9631;
float lat = -37.8136;

void setup() {
  size(600, 600, P3D);
  table = loadTable("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");
}


void draw() {
  background(51);
  translate(width*0.5, height*0.5);

  rotateY(angle);
  angle += 0.05; 

  lights();
  noStroke();
  fill(200);
  sphere(r);

  for (TableRow row : table.rows()) {

    
    theta = radians(lat) + PI / 2;
    phi   = radians(lon) + PI;

    x = r * sin(theta) * cos(phi);
    y = r * sin(theta) * sin(phi);
    z = r * cos(theta);

    translate(x, y, z);
    box(10);
  }