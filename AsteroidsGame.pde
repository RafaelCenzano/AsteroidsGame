Spaceship starship;
boolean is3Pressed = false;
boolean is4Pressed = false;
boolean is5Pressed = false;
Star[] stars = new Star[100];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
int time;

public void setup() {
  time = 0;
  starship = new Spaceship();
  size(600, 600);
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i < (int)(Math.random() * 5) + 8; i++){
    asteroids.add(new Asteroid());
  }
}

public void draw(){
  background(0);
  if(time != 0){
    time -= 1;
  }
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  if(is3Pressed){
  	starship.turn(-4);
  }
  if(is4Pressed){
  	starship.turn(4);
  }
  if(is5Pressed){
  	starship.accelerate(0.15);
    starship.moving(true);
  }else {
    starship.moving(false);
  }
  starship.move();
  starship.show();
}

void keyPressed() {
  if (key == '3') is3Pressed = true;
  if (key == '4') is4Pressed = true;
  if (key == '5') is5Pressed = true;
  if (key == '2' && time == 0){
    starship.hyperspace();
    time = 30 * 4;
  }
}
void keyReleased() {
  if (key == '3') is3Pressed = false;
  if (key == '4') is4Pressed = false;
  if (key == '5') is5Pressed = false;
}