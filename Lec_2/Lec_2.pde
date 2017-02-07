Bot user;
Bot user2;
Bot user3;
Bot user4;
Bot user5;

void setup() {
  size(400, 400);
  background(255);
  user = new Bot(100,100,255,0,0);
  user2 =new Bot(100,height-100,0,255,0);
  user3 = new Bot(width-100,height-100,0,0,255);
  user4 =new Bot(width-100,100,200,10,150);
  user5=new Bot(width/2,height/2,int (random(0,255)),int (random(0,255)),int (random(0,255)));
}

void draw() {

  user.display();
  user2.display();
  user3.display();
  user4.display();
  user5.display();
  
  user.step();
  user2.step();
  user3.step();
  user4.step();
  user5.step();
}