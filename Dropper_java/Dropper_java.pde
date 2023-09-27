//Are these games called droppers?
class Player{
  float y;
  float size;
  float x;
  Player(){
    y = 390;
    size = 50;
  }
  
  void collect(){
    fill(255);
    rect(x - 25, y, size, 5);
    x = mouseX;
  }
}
