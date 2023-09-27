Player player1;
Food[] yum;
int yums = 50;
int score = 0;
int time = 100000;
void settings(){
  size(600, 400);
}
void setup(){
  yum = new Food[yums];
  player1 = new Player();
  for(int i = 0; i < yums; i++){
    yum[i] = new Food();
  }
  background(0);
}
void draw(){
  background(0);
  player1.collect(); 
  for(int i = 0; i < yums; i++){
    if(time <= 0) {
      break;
    }
    yum[i].drop();
    if((yum[i].y >= player1.y && yum[i].y <= player1.y + player1.size) &&(yum[i].x >= player1.x - 25 && yum[i].x <= player1.x + player1.size)){
      score += 1;
      yum[i].x = random(1, 600);
      yum[i].y = random(-10, -25);
    }
    time -= 1;
  }
  text("Score: " + score , 270, 10);
  if(time >= 0){
  text("Time: " + time , 270, 25);
  }
  if(time <= 0) {
    fill(250, 50, 0);
    text("Game Over", 270, 200);
  }
}
