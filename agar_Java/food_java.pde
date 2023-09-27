class food {
  float x;
  float y;
  float size;
  float red;
  float green;
  float blue;
  float velX;
  float velY;
  food() {
    x = random(10, 590);
    y = random(10, 590);
    size = random(5, 100);
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    velX = random(-2, 2);
    velY = random(-2, 2);
  }

  void exist() {
    fill(red, green, blue);
    ellipse(x, y, size, size);
    x += velX;
    y += velY;
    if (x >= 585) {
      velX *= -1;
    }
    if (x <= 15) {
      velX *= -1;
    }
    if (y >= 585) {
      velY *= -1;
    }
    if (y <= 15) {
      velY *= -1;
    }
  }
}
