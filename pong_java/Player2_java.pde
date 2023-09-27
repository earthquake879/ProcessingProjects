class Player2 {
  float x;
  float y;

  Player2() {
    x = 562.5;
    y = 165;
  }

  public void move() {
    rect(x, y, 20, 70);
    if (keyPressed) {
      if (key == 'i' || key == 'I') {
        y -= 5;
      } else if (key == 'k' || key == 'K') {
        y += 5;
      }
      if (y <= -71) {
        y = 470;
      }
      if (y >= 471) {
        y = -70;
      }
    }
  }
}
