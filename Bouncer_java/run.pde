Bouncer player;
Ball[] hm;
int num = 1;
int score = 0;
int s = 0;
void settings() {
  size(600, 400);
}
void setup() {
  player = new Bouncer();
  hm = new Ball[num];
  for (int i = 0; i < num; i++) {
    hm[i] = new Ball();
  }
}

void draw() {
  background(0);
  player.hit();
  //for (int f = 0; f < num -1; f++) {
  //  hm[f].x = 10500;
  //  hm[f].y = -10500;
  //}

  for (int i = 0; i < num; i++) {

    hm[i].bounce();
    if ((hm[i].y >= player.y && hm[i].y <= player.y + 10) && (hm[i].x >= player.x - 37.5 && hm[i].x <= player.x + 45)) {
      hm[i].velY += 0.1;
      hm[i].velX += 0.1;
      if (hm[i].velY == 4 && hm[i].velX == 4) {
        hm[i].velY = 4.1;
        hm[i].velX = 4.1;
      }
      hm[i].velY *= -1;
      score += 1;
    }
    if (mousePressed && (hm[i].y >= player.y && hm[i].y <= player.y + 10) && (hm[i].x >= player.x - 37.5 && hm[i].x <= player.x + 45)) {
      hm[i].velX *= -1;
      hm[i].velY *= -1;
      hm[i].velX += 1;
      hm[i].velY += 1;
      hm[i].velX *= -1;
      hm[i].velY *= -1;
      score += 1;
    }
    if (hm[i].y > 425) {
      fill(250, 50, 0);
      text("Game Over", 280, 200);
      fill(255);
      text("Score: " + score, 280, 10);
      break;
    }
    fill(255);
    text("Score: " + score, 280, 10);
  }
}
