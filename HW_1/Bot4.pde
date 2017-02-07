class Bot4 {
  int x;
  int y;

  int px;
  int py;

  Bot4() {
    x = 300;
    y = 300;
   
    px = x;
    py = y;
  }
  void display() {
    stroke(0);
    
    line(px, py, x, y);   
    //point(x,y);
    //bezier(px,py,10,10,-10,-10,x,y);   
    px = x;
    py = y;
  }

  void step() {
   
    int choice = int(random(4));

    if (choice == 0) {
      //x++;
      x += 4;
    } else if (choice == 1) {
      //x--;
      x -= 4;
    } else if (choice == 2) {
      //y++;
      y += 4;
    } else {
      y -= 4;
      //y--;
    }
  }
}