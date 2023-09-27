public class Pipe {
  float x;
  float y;
  float lengthh;
  float widthh;
  float speed;
  float red;
  float green;
  float blue;
  Pipe() {
    x = 700;
    y = random(175, 335);
    widthh = 50;
    lengthh = 300;
    speed = 5;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }

  Pipe(float x, float y, float lengthh, float widthh, float speed) {
    this.x = x;
    this.y = y;
    this.lengthh = lengthh;
    this.widthh = widthh;
    this.speed = speed;
  }

  public void mPipe() {
    fill(red, green, blue);
    rect(x, y, widthh, lengthh);
    x = x - speed;
    if (x <= -40) {
      x = 700;
      y = random(125, 335);
      red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    }
    if (x < -40) {
      red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    }
    
  }
}
