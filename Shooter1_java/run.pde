Shooter1 player1;
Shooter2 player2;
void settings(){
  size(600, 400);
}

void setup(){
  background(255);
  player1 = new Shooter1();
  player2 = new Shooter2();
}
void draw(){
  background(255);
  player1.keyPressed();
  player2.keyPressed();
  if((player2.xB >= player1.xE - 35) && (player2.xB <= player1.xE + 35) && (player2.yB >= player1.yE - 35) && (player2.yB <= player1.yE + 35)){
    text("Game Over, Player 2 wins", 210, 200);
    player2.xB = player1.xE;
    player2.yB = player1.yE;
    player2.red = 255;
    player2.green = 0;
    player2.blue = 0;
  }
  else if((player1.xB >= player2.xE - 35) && (player1.xB <= player2.xE + 35) && (player1.yB >= player2.yE - 35) && (player1.yB <= player2.yE + 35)){
    text("Game Over, Player 1 wins", 210, 200);
    player1.xB = player2.xE;
    player1.yB = player2.yE;
    player1.red = 255;
    player1.green = 0;
    player1.blue = 0;
  }
}
