class Player1 {
  float x;
  float y;

  Player1() {
    x = 15;
    y = 165;
  }

  public void move() {
    rect(x, y, 20, 70);
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        y -= 5;
      } else if (key == 's' || key == 'S') {
        y += 5;
      }
    }
    if (y <= -71) {
      y = 470;
    }
    if(y >= 471){
      y = -70;
  }
  }
}
