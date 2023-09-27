Bball[] array;
int balls = 20;
public void settings() {
  size(600, 450);
}
void setup() {
  array = new Bball[balls];
  for (int i = 0; i < balls; i++) {
    //array[i] = new Bball(random(0, 585), random(0, 435), random(5, 15), random(5, 15), random(5, 50), random(0, 200), random(0, 200), random(0, 200));
    array[i] = new Bball();
  }
}
void draw() {
  background(255);
  for (int i = 0; i < balls; i++) {
    array[i].Bbounce();
  }
}
