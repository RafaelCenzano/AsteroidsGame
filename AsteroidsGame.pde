Spaceship starship;
boolean is3Pressed = false;
boolean is4Pressed = false;
boolean is5Pressed = false;
Star[] stars = new Star[100];

public void setup() {
  starship = new Spaceship();
  size(600, 600);
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

public void draw() {
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  opacity();
  if(is3Pressed){
  	starship.turn(-4);
  }
  if(is4Pressed){
  	starship.turn(4);
  }
  if(is5Pressed){
  	starship.accelerate(0.15);
  }
  starship.move();
  starship.show();
}

void opacity(){
  fill(0, 0, 0, 65);
  rect(0, 0, 600, 600);
  loop();
}

void keyPressed() {
  if (key == '3') is3Pressed = true;
  if (key == '4') is4Pressed = true;
  if (key == '5') is5Pressed = true;
  if (key == '2') starship.hyperspace();

}
void keyReleased() {
  if (key == '3') is3Pressed = false;
  if (key == '4') is4Pressed = false;
  if (key == '5') is5Pressed = false;
}