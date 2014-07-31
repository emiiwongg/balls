Ball ball1, ball2, ball3, ball4;

void setup() {
  size(500, 500);
  background(150);
  
  ball1 = new Ball(color(255, 0, 0), 2, 0, 20, 20, 20
  
  
  
  );
  ball2 = new Ball(color(255, 255, 0), 0, 5, 40, 50, 30);
  ball3 = new Ball(color(0, 255, 0), 3, 6, 10, 10, 25);
  ball4 = new Ball(color(0, 0, 255), 5, 4, 80, 20, 28);
}

void draw() {
  background(255);
  ball1.drop();
  ball2.drop();
  ball3.drop();
  ball4.drop();
}

class Ball {
  color col;
  int xspeed, yspeed;
  int mode;
  int diameter;
  int x, y;
  
  Ball(color c, int xs, int ys, int d, int startx, int starty) {
    col = c;
    xspeed = xs;
    yspeed = ys;
    diameter = d;
    x = startx;
    y = starty;
  } 
  
  void drop() {
    fill(col);
    ellipse(x, y, diameter, diameter);
    
    x += xspeed;
    y += yspeed;
    
    if (x > 495 || x < 5) xspeed *= -1;
    if (y > 495 || y < 5) yspeed *= -1;
    
    
  }
  
  void moveBall() {
    if (movetoclick == true) {
      x = mouseX;
      y = mouseY;
    }
  }
  
}

void mousePressed() {
  ball4.moveBall();
}
