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
  for(int i = asteroids.size() - 1; i >= 0; i--){
    ArrayList <Integer> removinga = new ArrayList <Integer>();
    ArrayList <Integer> removingp = new ArrayList <Integer>();
    for(int k = 0; k < projectiles.size(); k++){
      float ax = (float)asteroids.get(i).getAsteroidX();
      float ay = (float)asteroids.get(i).getAsteroidY();
      float px = (float)projectiles.get(k).impactCheckX();
      float py = (float)projectiles.get(k).impactCheckY();
      if(dist(ax, ay, px, py) < 10){
        boolean check = true;
        for(int num : removinga){
          if(num == i){
            check = false;
          }
        }
        if(check){
          removinga.add(i);
        }
        removingp.add(k);
      }
    }
    for(int l = 0; l < removinga.size(); l++){
      asteroids.remove(removinga.get(l));
    }
    for(int j = 0; j < removingp.size(); j++){
      projectiles.remove(removingp.get(j));
    }
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