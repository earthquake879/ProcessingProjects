class Asteroid {
  float x;
  float y;
  float size;
  float speed;

  Asteroid() {
    x = random(50, 600);
    y = random(-100, -100);
    size = random(12, 25);
    speed = random(1, 5);
  }

  void zoom() {
    stroke(0);
    fill(70);
    ellipse(x, y, size, size);
    y += speed;
    
    if(y >= 410){
      y = random(-0, -15);
      x = random(0, 600);
    }
  }
}
