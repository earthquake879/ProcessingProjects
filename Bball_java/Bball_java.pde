class Bball {
  float x;
  float y;
  float velX;
  float velY;
  float SizeB;
  float red;
  float green;
  float blue;
  boolean isE;

  Bball() {
    x = random(15, 585);
    y = random(15, 435);
    velX = random(5, 15);
    velY = random(5, 15);
    SizeB = random(10, 50);
    red = random(0, 200);
    green = random(0, 200);
    blue = random(0, 200);
    if (random(0, 200) < 50) {
      isE = true;
    } else {
      isE = false;
    }
  }

  Bball(float x, float y, float velX, float velY, float SizeB, float red, float green, float blue, boolean isE) {
    this.x = x;
    this.y = y;
    this.velX = velX;
    this.velY = velY;
    this.SizeB = SizeB;
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.isE = isE;
  }
  public void Bbounce() {
    if (isE) {
      ellipse(x, y, SizeB, SizeB);
    } else {
      rect(x, y, SizeB, SizeB);
    }
    fill(red, green, blue);
    x+= velX;
    y+= velY;
    if (x >= 585) {
      velX *= -1;
    }
    if (x <= 15) {
      velX *= -1;
    }
    if (y >= 435) {
      velY *= -1;
    }
    if (y <= 15) {
      velY *= -1;
    }
  }
}
