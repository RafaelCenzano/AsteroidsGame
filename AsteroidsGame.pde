Spaceship starship;
boolean is3Pressed = false;
boolean is4Pressed = false;
boolean is5Pressed = false;
Star[] stars = new Star[100];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> projectiles = new ArrayList <Bullet>();
int time;

public void setup() {
  time = 0;
  starship = new Spaceship();
  size(600, 600);
  strokeWeight(1);
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
  // Variable to countdown time at 30 fps
  if(time != 0){
    time -= 1;
  }

  // Stars
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }

  // Key inputs for starship
  if(is3Pressed){
    starship.turn(-4);
    starship.right(true);
  }else{
    starship.right(false);
  }
  if(is4Pressed){
    starship.turn(4);
    starship.left(true);
  }else{
    starship.left(false);
  }
  if(is5Pressed){
    starship.accelerate(0.15);
    starship.traveling(true);
  }else {
    starship.traveling(false);
  }

  // move asteroids
  if(asteroids.size() > 0){
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).move();
    }
  }
  // move projectiles
  if(projectiles.size() > 0){
    for(int i = 0; i < projectiles.size(); i++){
      projectiles.get(i).move();
    }
  }
  // move starship
  starship.move();

  // Check for contact
  ArrayList <Integer> removal = new ArrayList <Integer>();
  if(asteroids.size() != 0 && projectiles.size() != 0){
    boolean check = false;
    for(int i = 0; i < asteroids.size(); i++){
      for(int k = 0; k < projectiles.size(); k++){
        if(dist((float)projectiles.get(k).impactCheckX(), (float)projectiles.get(k).impactCheckY(), (float)asteroids.get(i).getAsteroidX(), (float)asteroids.get(i).getAsteroidY()) <= 5){
          removal.add(i);
          removal.add(k);
          break;
        }
      }
    }
  }
  for(int i = 0; i < removal.size() - 1; i += 2){
    asteroids.remove(removal.get(i));
    projectiles.remove(removal.get(i + 1));
  }

  // show asteroids
  if(asteroids.size() > 0){
    for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).show();
    }
  }
  // show projectiles
  if(projectiles.size() > 0){
    for(int i = 0; i < projectiles.size(); i++){
      projectiles.get(i).show();
    }
  }
  // show starship
  starship.show();
}

void keyPressed() {
  if (key == '1'){
    projectiles.add(new Bullet(starship));
  }
  if (key == '3') is3Pressed = true;
  if (key == '4') is4Pressed = true;
  if (key == '5') is5Pressed = true;
  if (key == '7') starship.stop();
  if (key == '2' && time == 0){
    starship.hyperspaceJump();
    time = 30 * 4;
  }
  if (key == '6') starship.warpSpeed();
}
void keyReleased() {
  if (key == '3') is3Pressed = false;
  if (key == '4') is4Pressed = false;
  if (key == '5') is5Pressed = false;
}