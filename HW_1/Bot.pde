class Bot {
  float x;
  float y;
  
  int rr;
  int gg;
  int bb;
  
  float px;
  float py;

  Bot(float a,float b,int r_,int g_,int b_) {
    
    rr=r_;
    bb=b_;
    gg=g_;
    
    x = a;
    y = b;

    px = x;
    py = y;
  }
  void display() {
    
    stroke(rr,gg,bb);
    
    line(px, py, x, y);   

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