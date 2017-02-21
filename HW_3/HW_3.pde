Tree branch1;
Tree branch2;
Tree branch3;
Tree branch4;
Tree branch5;
Tree branch6;
Tree branch7;
Tree branch8;

void setup() {
  size(800, 800);
  

  branch1= new Tree(0);
  branch2= new Tree(90);
  branch3= new Tree(180);
  branch4= new Tree(270);
  
  branch5= new Tree(45);
  branch6= new Tree(135);
  branch7= new Tree(215);
  branch8= new Tree(315);
}

void draw() {
  background(#27AE60);
  branch1.display();
  branch2.display();
  branch3.display();
  branch4.display();
  branch5.display();
  branch6.display();
  branch7.display();
  branch8.display();
}