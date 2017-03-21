Planet Mercury;
Planet Sun;
Planet Venus;
Planet Earth;
Planet Mars;
Planet Jupiter;
Planet Saturn;
Planet Uranus;
Planet Neptune;
Planet Pluto;

Planet Universe;

void setup() {
  size(1400, 900, P3D);
  
  Universe = new Planet(100,0,900,"universe.jpg");
  
  Sun = new Planet(10,0,60,"sun.jpg");
  Mercury = new Planet(2,80,10,"mercury.jpg");
  Venus = new Planet(3,130,20,"venus.jpg");
  Earth = new Planet(3.5,220,20,"earth.jpg");
  Mars = new Planet(4,285,15,"mars.jpg");
  Jupiter = new Planet(5,370,35,"jupiter.jpg");
  Saturn = new Planet(6,460,22,"saturn.jpg");
  Uranus = new Planet(10,550,22,"uranus.jpg");
  Neptune = new Planet(15,6200,20,"neptune.jpg");
  Pluto = new Planet(20,670,8,"pluto.jpg");
  
  Earth.CreateSat(1);
 
  
  camera(200, -200, 300, width/2, height/2, 0, 0, 1, 0 );
}



void draw() {
  background(0);
  lights();
  translate(width/2, height/2 );
  
 
 
  Universe.Show();
  
  Mercury.Show();
  Sun.Show();
  Venus.Show();
  Earth.Show();
  Mars.Show();
  Jupiter.Show();
  Saturn.Show();
  Uranus.Show();
  Neptune.Show();
  Pluto.Show();

}