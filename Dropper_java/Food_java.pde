class Food {
  float y;
  float x;
  float size;
  float speed;
  Food() {
    x = random(1, 600);
    y = random(-10, -15);
    size = random(5, 15);
    speed = random(3, 5);
  }

  void drop() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(x, y, size, size);
    
    y += speed;
    if ( y >= 405) {
      x = random(1, 600);
      y = random(-10, -15);
      size = random(5, 12.5);
    }
  }
}
