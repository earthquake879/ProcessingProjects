Player2 playerT;
Pong ball;
Player1 playerO; 

void settings() {
  size(600, 400);
}
void setup() {
  background(50, 50, 100);
  ball = new Pong();
  playerO = new Player1();
  playerT = new Player2();
}
void draw() {
  background(50, 50, 100);
  text("Player 1's score: " + ball.score1, 130, 10);
  text("Player 2's score: " + ball.score2, 390, 10);
  ellipse(300, 200, 50, 50);
  rect(300, -15, 1, 600);
  fill(50, 50, 100);
  stroke(255);
  ball.bounce();
  playerO.move();
  playerT.move();
  if ((ball.y >= playerO.y && ball.y <= playerO.y + 70) && (ball.x >= playerO.x && ball.x <= playerO.x + 20)) {
    ball.velX *= -1;
    ball.velX += 0.5;
    if(ball.velX == 4){
      ball.velX = 4.5;
    }
  }
  if ((ball.y >= playerT.y && ball.y <= playerT.y + 70) && (ball.x >= playerT.x && ball.x <= playerT.x + 20)) {
    ball.velX *= -1;
    ball.velX += 0.5;
    if(ball.velX == 4){
      ball.velX = 4.5;
    }
  }
  //text("Player 1's score: " + ball.score1, 390, 400);
  //text("Player 2's score: " + ball.score2, 390, 400);
  fill(255);
}
