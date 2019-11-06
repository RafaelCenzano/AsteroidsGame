Spaceship starship;
boolean is3Pressed = false;
boolean is4Pressed = false;
boolean is5Pressed = false;
double[] xs = new double[100];
double[] ys = new double[100];
int[] sizes = new int[100];
int[] colors = new int[100];

public void setup() {
  starship = new Spaceship();
  size(600, 600);
  background(0);
  for(int i = 0; i < xs.length; i++){
  	xs[i] = Math.random() * 600;
  	ys[i] = Math.random() * 600;
  	sizes[i] = (int)(Math.random() * 6);
  	colors[i] = color((int)(Math.random() * 200) + 55,(int)(Math.random() * 200) + 55,(int)(Math.random() * 200) + 55);
  }
}

public void draw() {
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
  fill(0, 0, 0, 50);
  rect(0, 0, 600, 600);
  for(int i = 0; i < xs.length; i++){
  	fill(colors[i]);
  	stroke(colors[i]);
  	ellipse((float)xs[i], (float)ys[i], sizes[i], sizes[i]);
  }
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