class Bot {
  int x;
  int y;

  int px;
  int py;

  Bot() {
    x = width/2;
    y = height/2;
    
    px = x;
    py = y;
  }


  void display() {
    stroke(0);

    //line(px, py, x, y);
    //point(x,y);
    bezier(px,py,10,10,-10,-10,x,y);
    
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