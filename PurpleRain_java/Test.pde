PurpleRain[] rain;

int droplets = 1000;
public void settings() {
  size(700, 400);
}

void setup() {
  rain = new PurpleRain[droplets];
  for (int i = 0; i < droplets; i++) {
    rain[i] = new PurpleRain();
  }

}

void draw() {
  background(0, 150, 255);
  for (int i = 0; i < droplets; i++) {
    rain[i].drop();
//    //ellipse(mouseX, 275, 50, 50);
//    //fill(255, 100, 0);
//    //rect(mouseX - 25,300, 50, 100);
//    //fill(0);
    //rain[i].speed += 0.5;
    //if(rain[i].y >= 400){
    //  rain[i].speed = random(5, 15);
    //}
      }
}
