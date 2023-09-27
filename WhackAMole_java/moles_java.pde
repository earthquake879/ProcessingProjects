class Moles {
  float x;
  float y; 

  Moles() {
    x = random(1, 599);
    y = random(1, 399);
  }

  void annoy() {
    fill(255, 100, 100);
    ellipse(x, y, 20, 20); 
  }
  void returnn(){
    x = random(1, 599);
    y = random(1, 399);
    //x = 100000;
  }
}
