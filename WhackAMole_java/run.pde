Whacker whack;
Moles[] mole;
int mnum = 3;
int time = 1000;
int score = 0;
void settings() {
  size(620, 420);
}

void setup() {
  mole = new Moles[mnum];
  for (int i = 0; i < mnum; i++) {
    mole[i] = new Moles();
  }
  whack = new Whacker();
}

void draw() {
  background(0);
  for (int i = 0; i < mnum; i++) {
    mole[i].annoy();

    if (mousePressed && mole[i].x - 10 <= whack.x + 12.5 && mole[i].x + 10 >= whack.x - 12.5 && mole[i].y + 10 >= whack.y - 12.5 && mole[i].y - 10 <= whack.y + 12.5) {
      mole[i].returnn();
      time += 25;
      score++;
    }
     if (time <= 0 ) {
      for(int j = 0; j < mnum; j++){
        mole[i].x = 1000;
        text("Gamer Over ", 263, 190);
        text("Final Score: " + score, 263, 205);
      }
    }
  }
  whack.exist();
  fill(255);
  if (time > 0) {
    text("Time: " + time, 280, 10);
    text("Score: " + score, 280, 25);
  }
  
  time -= 1;
}
