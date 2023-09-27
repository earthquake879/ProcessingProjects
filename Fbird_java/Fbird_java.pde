class Fbird {
  float x;
  float y;
  float red;
  float green;
  float blue;

  Fbird() {
    x = 300;
    y = 100;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }

  Fbird(float x, float y, float red, float green, float blue) {
    this.x = x;
    this.y = y;
    x = 25;
    y = 200;
  }

  public void bird() {
    fill(red, green, blue);
    ellipse(x, y, 25, 25);
    if (mousePressed) {
      y = y - 20;
    }
    y += 5;

    if (y <= 15) {
      y = 15;
      x = x - 3;
      
    }
    if (y >=385) {
      y = 385;
    }
     if (y <= 15 && x > -10) {
       text("Don't touch the Ceiling!", 175, 40);
     }
  }
}
