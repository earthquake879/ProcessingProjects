class Ball {
  float x;
  float y;
  float size;
  float velX;
  float velY;

  Ball() {
    x = random(1, 599);
    y = random(1, 100);
    velX = random(-5, 5);
    velY = 3.5;
    size = 15;
  }
  public void bounce() {

    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(x, y, size, size);
    //
    x+= velX;
    y+= velY;
    //velX += 0.5;
    //velY += 0.5;
    if (x >= 599) {
      velX *= -1;
      velX += 0.1;
    }
    if (x <= 1) {

      velX *= -1;
      velX += 0.1;
    }
    if (y <= 0) {
      velY *= -1;
    }
  }
}
