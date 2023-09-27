class Bouncer{
  float y;
  float size;
  float x;
  Bouncer(){
    y = 375;
    size = 75;
  }
  
  void hit(){
    fill(255);
    rect(x - 37.5, y, size, 10);
    x = mouseX;
  }
}
