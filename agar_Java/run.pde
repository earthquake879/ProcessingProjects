Agar player;
food[] ball;
int num = 30;
int nnum = num;
static int food = 0;
int score = 0;
int m = 1;
int stage = 1;
void settings() {
  size(600, 600);
}
void setup() {
  ball = new food[num];
  player = new Agar();
  for (int f = 0; f < num; f++) {
    ball[f] = new food();
  }
}
void draw() {
  background(255);
  player.eat();
  for (int i = 0; i < num; i++) {
    ball[i].exist();
    if ((ball[i].x <= player.x + player.size * 0.5) && (ball[i].x >= player.x - player.size * 0.5) && (ball[i].y <= player.y + player.size * 0.5) && (ball[i].y >= player.y - player.size * 0.5) && (player.size > ball[i].size)) {
      ball[i].x = -400;
      ball[i].y = -400;
      player.size += 5;
      food += 1;
    }
    if ((ball[i].x <= player.x + player.size * 0.5) && (ball[i].x >= player.x - player.size * 0.5) && (ball[i].y <= player.y + player.size * 0.5) && (ball[i].y >= player.y - player.size * 0.5) && (player.size < ball[i].size)) {
      for (int j = 0; j < num; j++) {
        ball[j].velX = 0;
        ball[j].velY = 0;
        ball[j].x = -500;
        ball[j].y = -500;
      }
    }
    if (ball[i].x == -500 && ball[i].y == -500) {
      text("Game Over", 270, 300);
    }

    if (food == nnum * m) {
      stage++;

      player.size = 35;
      for (int j = 0; j < num; j++) {
        ball[j].x = random(10, 590);
        ball[j].y = random(10, 590);
        ball[j].velX = random(-2, 2);
        ball[j].velY = random(-2, 2);
        ball[j].red = random(0, 255);
        ball[j].green = random(0, 255);
        ball[j].blue = random(0, 255);
        ball[j].size = random(5, 100);
      }
      m += 1;
    }
  }
  text("Stage: " + stage, 270, 35);
  text("Food eaten: " + food, 270, 20);
}
