class Ship {
  float x;
  float y;
  float red;
  float blue;
  float green;
  float xb;
  float yb;
  Ship() {
    x = 300;
    y = 410;
    red = 0;
    green = 100;
    blue = 255;
    xb = -1000;
    yb = y;
  }

  void fly() {
    stroke(0);
    fill(250, 100, 255);
    rect(xb, yb, 3, 10);
    stroke(255, 100, 0);
    fill(130);
    rect(x + 1.5, y -40, 6, 50);
    
    fill(255, 150, 0);
    rect(x - 8, y + 40, 6, 15);
    rect(x + 12, y + 40, 6, 15);
    
    fill(0, 100, 255);
    rect(x, y - 30, 10, 70);
    rect(x - 10, y + 15, 10, 30);
    rect(x + 10, y + 15, 10, 30);
    
    
    
    x = mouseX - 1.5;
    y = mouseY;

    if (yb <= 0) {
      xb = x + 3.4;
      yb = y;
    }
  }
}
