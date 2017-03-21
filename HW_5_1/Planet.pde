class Planet {
  float speed = 0;
  float distance = 0;
  float size = 0;
  PShape planet;
  Planet planets[];

  Planet(float s, float d, float si, String image) {

    speed = s;
    distance = d;
    size =si;

    PImage texture = loadImage(image);
    noStroke();
    planet = createShape(SPHERE, si);
    planet.setTexture(texture);
  }
  void CreateSat(int number) {
   planets = new Planet[number]; 
    for (int i = 0; i < number; i++) {
      planets[i]= new Planet(3, 30, 5, "pluto.jpg");
    }
  }

  void Show() {
    
    pushMatrix(); 
    rotateY(frameCount*PI/speed * 0.01);
    translate(distance, 0, 0);
    shape(planet);
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].Show();
      }
    }

    popMatrix();
  }
}