class Shooter1 {
  float xE;
  float yE;
  float xR;
  float yR;
  float xB;
  float yB;
  float red;
  float green;
  float blue;

  Shooter1() {
    xE = 100;
    yE = 200;
    xR = xE;
    yR = xE + 10;
    xB = xE;
    yB = -50;
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
  }

  Shooter1(float xE, float yE, float xR, float yR, float xB, float yB) {
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
    rect(xE - 10, yE + 5, 35, 5);
    rect(xB, yB, 5, 1);
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        yE -= 5;
      } else if (key == 's' || key == 'S') {
        yE += 5;
      }
    } else if (key == 'd' || key == 'D') {
      yB = yE + 5;
      xB += 5;
      if (xB >= 600) {
        xB = xE;
      }
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
