class Agar {
  float size;
  float x;
  float y;
  float red;
  float green;
  float blue;
  Agar() {
    size = 35;

    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }


  Agar(float size, float x, float y, float red, float green, float blue) {
    this.size = size;
    size = 35;
    this.x = x;
    this.y = y;
    x = mouseX;
    y = mouseY;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }

  void eat() {
    x = mouseX;
    y = mouseY;
    ellipse(x, y, size, size);
    fill(red, green, blue);
    if (mouseX <= 10) {
      mouseX = 10;
    }
    if (mouseX >= 590) {
      mouseX = 590;
    }
    if (mouseY <= 10) {
      mouseY = 10;
    }
    if (mouseY >= 590) {
      mouseY = 590;
    }
    
  }
}
