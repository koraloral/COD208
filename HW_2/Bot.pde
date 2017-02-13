class Bot {
  float x;
  float y;

  int rr;
  int gg;
  int bb;

  float px;
  float py;

  int xdirection = 1;
  int ydirection = 1;  

  Bot(float a, float b, int r_, int g_, int b_) {

    rr=r_;
    bb=b_;
    gg=g_;

    x = a;
    y = b;

    px = x;
    py = y;
  }
  void display() {

    stroke(rr, gg, bb);

    line(px, py, x, y);   

    px = x;
    py = y;
  }

  void step() {



    int choice = int(random(4));

    if (choice == 0 && x<width) {
      //x++;
      x +=4 * xdirection;
    } else if (choice == 1 && x>0) {
      //x--;
      x -=4 * xdirection;
    } else if (choice == 2 && y<height) {
      //y++;
      y +=4 * ydirection;
    } else if (choice == 3 && y>0) {
      y -=4 * ydirection;
      //y--;
    }
    if (x>width || x<0) {
      xdirection *= -1;
    }
    if (y>height || y<0) {
      ydirection *= -1;
    }
  }
}