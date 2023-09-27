Fbird flappy;
Pipe[] tube;
int num = 5;
int score = 0;
public void settings() {
  size(600, 400);
}
void setup() {
  flappy = new Fbird();
  tube = new Pipe[num];
  for (int f = 0; f < num; f++) {
    tube[f] = new Pipe();
    tube[f].x = f * 150;
  }
}
void draw() {
  background(255);
  flappy.bird();
  for (int i = 0; i < num; i++) {
    tube[i].mPipe();
    if ((flappy.y >= tube[i].y && flappy.y <= tube[i].y + tube[i].lengthh) && (flappy.x >= tube[i].x && flappy.x <= tube[i].x + tube[i].widthh)) {
      flappy.x = flappy.x - tube[i].speed;
    }
    if ((flappy.y >= tube[i].y) &&(flappy.x >= tube[i].x && flappy.x <= tube[i].x + tube[i].widthh)) {
      flappy.y = tube[i].y;
      score += 5;
    }

    //if (mousePressed) {
    //  fill(random(0, 255), random(0, 255), random(0, 255));
    //}
    if (flappy.x > tube[i].x) {
      score += 1;
    }

    text("Score: " + score, 200, 10);
    //tube.mPipe();
    if (flappy.x < -10) {
      text("Game Over", 200, 40);
    }

    //if(score >= -420 && score <= 0){
    //  flappy.y = 85;
    //  text("Click the screen to fly up but beware the ceiling and pipes!", 100, 60);
    //}
    if (flappy.y <= 15 && flappy.x > 0) {
      score = score - 5;
    }

    //if (score <= 0) {
    //  text("This is why you don't go to the ceiling! Look at your score!", 150, 100);
    //}
    if (score >= 5000 && score < 5500) {
      text("Medal Earned: Pure Talent", 175, 60);
    }
    if (score >= 10000 && score < 10500) {
      text("Medal Earned: Asteroid In the sky", 150, 60);
      if (flappy.x < 250 && flappy.x > 5) {
        flappy.x = 250;
      }
    }
    if (score >= 20000 && score < 20500) {
      text("Medal Earned: God", 175, 60);
    }
    if (score >= 100000 && score < 100500) {
      text("Medal Earned: Cayde-6's Heir", 175, 60);
    }
    //if(flappy.x < -10 && score <= 0){
    //  text("Medal Earned: So bad you broke the game", 125, 60);
    //}
    tube[i].speed += 0.0002;
  }
}
