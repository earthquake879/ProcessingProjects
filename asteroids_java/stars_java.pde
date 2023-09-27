class Stars{
  float x;
  float y;
  float size;
  float speed;
  float red ;
  float blue;
  float green;
  Stars(){
    x = random(0, 600);
    y = random(0, 400);
    size = random(5, 10);
    speed = 1;
    red = 255;
    blue = 255;
    green = 255;
  }
  
  void shine(){
    stroke(255);
    fill(red, blue, green);
    ellipse(x, y, size, size);
    y += speed;
    if(y >= 405){
      x = random(0, 600);
      y = -10;
    }
  }
}
