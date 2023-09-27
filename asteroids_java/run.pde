Stars[] spots;
Asteroid[] rock;
Ship player;
int snum = 100;
int rnum = 10;
int score = 0;
int earthg = 800;
void settings() {
  size(600, 400);
}

void setup() {  
  player = new Ship();
  spots = new Stars[snum];
  rock = new Asteroid[rnum];
  for (int i = 0; i < snum; i++) {
    spots[i] = new Stars();
  }
  for (int i = 0; i < rnum; i++) {
    rock[i] = new Asteroid();
  }
  background(0);
}
void draw() {
  background(0);
  fill(0, 100, 255);
  ellipse(300, earthg, 1000, 1000);
  earthg += 1;
  if (keyPressed && rock[1].x != -10000 && rock[1].x !=-1000) {
    if (key == ' ') {
      player.xb = player.x + 3.4;
      player.yb -= 5;
    }
  } else if (mousePressed && rock[1].x != -10000 && rock[1].x !=-1000) {
    player.xb = player.x + 3.4;
    player.yb -= 5;
  } else {
    player.xb = player.x + 3.4;
    player.yb = player.y;
  }

  for (int f = 0; f < snum; f++) {
    spots[f].shine();
    if (rock[1].x != -10000 && rock[1].x !=-1000) {
      score += 1;
    }
    if(rock[1].x != -10000 && rock[1].x !=-1000 && score < 450000){
    spots[f].speed += 0.002; //+= 0.0002;
    }
    else if(score >= 450000 && score < 500000 && rock[1].x != -10000){
      spots[f].speed -= 0.009;
    }
    else{
      spots[f].speed = 0;
    }
    if(spots[f].speed >= 9 && spots[f].speed <= 10){
      text("!Extreme Speeds Incoming!!", 240, 200);
    }
    if (spots[f].speed >= 10 && score < 450000) {
      spots[f].red = random(0, 255);
      spots[f].green = random(0, 255);
      spots[f].blue = random(0, 255);
    }
    else{
      spots[f].red = 255;
      spots[f].green = 255;
      spots[f].blue = 255;
    }
    if (score >= 500000) { 
      spots[f].speed = 0;
      fill(255);
      stroke(250, 50, 0);
      ellipse(300, -400, 1000, 1000);
      //500000
      for (int l = 0; l < rnum; l++) {
        rock[l].x = -1000;
      }
      fill(255);
      text("You have Made it to Europa", 230, 200);
      text("You win!", 280, 215);
      //text("RIP 150 rpm hcs", 195, 230);
    }
  }
  player.fly();
  for (int f = 0; f < rnum; f++) {
    if (score < 10000 && rock[f].x != -10000 && rock[f].x !=-1000) {
      fill(250, 50, 0);
      text("!Asteroid Field Incoming!", 240, 200);
      text("Leaving Earth", 240, 215);
    }
    if (rock[f].y + rock[f].size/2 >= player.y - 30 && rock[f].y - rock[f].size/2 <= player.y + 70 && rock[f].x + rock[f].size/2 >= player.x - 8 && rock[f].x - rock[f].size/2<= player.x + 18) {
      for (int j = 0; j < rnum; j++) {
        rock[j].x = -10000;
        rock[j].y = -100000000;
        fill(250, 50, 0);
        text("Game over", 290, 200);
        text("You died", 290, 210);
      }
    }
    rock[f].zoom();

    if (player.yb >= rock[f].y - rock[f].size/2 && player.yb <= rock[f].y + rock[f].size/2 && player.xb >= rock[f].x - rock[f].size/2 && player.xb <= rock[f].x + rock[f].size/2) {
      rock[f].x = random(0, 600);
      rock[f].y = random(-0, -15);
      player.xb = player.x - 1.5;
      player.yb = player.y;
      score += 1000;
    }
    if (rock[f].x != -10000 && rock[f].x !=-1000) {
      fill(255);
      text("Score: " + score, 270, 10);
      player.red = 255;
      player.green = 50;
      player.blue = 20;
      text("Speed: " + spots[1].speed, 270, 25);
    }

    if (rock[f].x == -10000) {
      fill(250, 50, 0);
      text("Game over", 265, 200);
      text("You died", 265, 210);
      fill(100, 255, 50);
      text("Final Score: " + score, 260, 10);
    }
    if (rock[f].x ==-1000) {
      fill(100, 255, 50);
      text("Final Score: 500000", 260, 10);
    }
    
  }
  fill(0, 100, 255);
  stroke(50, 255, 0);
  ellipse(300, earthg, 1000, 1000);
}
