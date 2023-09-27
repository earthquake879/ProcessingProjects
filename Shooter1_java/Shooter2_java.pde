class Shooter2 {
  float xE;
  float yE;
  float xR;
  float yR;
  float xB;
  float yB;
  float red;
  float green;
  float blue;

  Shooter2() {
    xE = 500;
    yE = 200;
    xR = xE - 30;
    yR = xE + 10;
    xB = xE;
    yB = -50;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }

  Shooter2(float xE, float yE, float xR, float yR, float xB, float yB) {
    this.xE = xE;
    this.xR = xR;
    this.yR = yR;
    this.yE = yE;
    this.xB = xB;
    this.yB = yB;
  }

  void keyPressed() {
    ellipse(xE, yE, 35, 35);
    fill(red, green, blue);
    rect(xR, yE - 5, 35, 5);
    rect(xB, yB, 5, 1);
    if (keyPressed) {
      if (key == 'i' || key == 'I') {
        yE -= 5;
      } else if (key == 'k' || key == 'K') {
        yE += 5;
      }
    } else if (key == 'j' || key == 'J') {
      yB = yE - 5;
      xB -= 5;
        }
      
    if (yE >= 400) {
      yE = 395;
    }
    if (yE <= 0) {
      yE = 5;
    }

  //void keyReleased() {
  //  if (key == CODED) {
  //    if (keyCode == UP) {
  //    yE = 5;
  //  } 
  //  }
  //  //else {
  //  //  yE = 0;
  //  //}
  //}
  }
}
