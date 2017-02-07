Bot user;
Bot2 user2;
Bot3 user3;
Bot4 user4;

void setup() {
  size(400,400);
  background(255);
  user = new Bot();
  user2 = new Bot2();
  user3 = new Bot3();
  user4 = new Bot4();

}

void draw() {
  user.display();
  user2.display();
  user3.display();
  user4.display();
   
  user.step();
  user2.step();
  user3.step();
  user4.step();
}