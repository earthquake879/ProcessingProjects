class PurpleRain {
  int red;
  int green;
  int blue;
  float lengt;
  float heigh;
  float x;
  float y;
  float speed;
  
  PurpleRain(){
    x = random(0, 700);
    y = random(-50, 20);
    lengt = 1;
    heigh = random(10, 15);
    red = 50;
    green = 0;
    blue = 255;
    speed = random(5, 15);
  }
  
 PurpleRain(int red, float lengt, float heigh, float x, float y, int blue, int green) {
    this.red = red;
    this.blue = blue;
    this.green = green;
    this.lengt = lengt;
    this.heigh = heigh;
    this.x = x;
    this.y = y;
    
    
  }
  public void drop() {
    rect(x, y, lengt, heigh);
    fill(red, green, blue);
    y+= speed;
    
    if(y >= 700){
      y = random(-50, 20);
      x = random(0, 700);
    }
  }
}
