Star[] stars = new Star[1500];
float sspeed = 1;
float speed;

void settings() {
  size(600, 400);
}

void setup() {
  //size(800, 800);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //background(0);
}

void draw() {
  //speed = map(mouseX, 0, width, 0, 50);
  speed = sspeed;
  sspeed += 0.00;
  background(0);
  translate(width/2, width/2);  
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
