class Pong {
  float x;
  float y;
  float size;
  float red;
  float green;
  float blue;
  float velX;
  float velY;
  int score1;
  int score2;
  Pong() {
    x = 300;
    y = 200;
    velX = 3.5;
    velY = 3.5;
    size = 25;
    red = random(0, 200);
    green = random(0, 200);
    blue = random(0, 200);
    score1 = 0;
    score2 = 0;
  }
  public void bounce() {

    ellipse(x, y, size, size);
    //fill(red, green, blue);
    x+= velX;
    y+= velY;
    //velX += 0.5;
    //velY += 0.5;
    if (x >= 650) {
      velX = 3.5;
      velY = 3.5;
      velX *= -1;
      x = 300;
      y = 200;
      score1 += 1;
    }
    if (x <= -50) {
      velX = 3.5;
      velY = 3.5;
      x = 300;
      y = 200;
      //velX *= -1;
      score2 += 1;
    }
    if (y >= 400) {
      velY *= -1;
    }
    if (y <= 15) {
      velY *= -1;
    }
  }
}
