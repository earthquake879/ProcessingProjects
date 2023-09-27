class Whacker{
  int x;
  int y;
  int red;
  int green;
  int blue;
  
  
  Whacker(){
    x = mouseX;
    y = mouseY;
    red = 255;
    green = 255;
    blue = 255;
  }
  
  void exist(){
    stroke(255);
    fill(0);
    ellipse(x, y, 25, 25);
    ellipse(x, y, 10, 10);
    rect(x, y - 12.5, 1, 25);
    rect(x - 12.5, y, 25, 1);
    x = mouseX;
    y = mouseY;
  }
}
