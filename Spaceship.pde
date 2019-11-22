class Spaceship extends Floater  
{
  boolean moving, turningLeft, turningRight, hyperspace;
  int teleport;
  ArrayList <Double> lightningx1, lightningx2, lightningy1, lightningy2;
  public Spaceship(){
    moving = turningLeft = turningRight = hyperspace = false;
    lightningx1 = new ArrayList <Double>();
    lightningx2 = new ArrayList <Double>();
    lightningy1 = new ArrayList <Double>();
    lightningy2 = new ArrayList <Double>();
    teleport = 0;
    corners = 10;
    int[] temp1 = {-8, 5, 1, 7, 16, 7, 1, 5, -8};
    int[] temp2 = {-8, -6, -5, -3, 0, 3, 5, 6, 8};
    xCorners = new int[10];
    yCorners = new int[10];
    for(int i = 0; i < temp1.length; i++){
      xCorners[i] = (int)(temp1[i] * 1.5);
      yCorners[i] = (int)(temp2[i] * 1.5);
    }
    myColor = color (200, 200, 220);
    myCenterX = myCenterY = 300; 
    myDirectionX = myDirectionY = 0;
    myPointDirection = 0;
  }
  public void stop(){
    teleport = 30;
  }
  public void show(){

    fill(myColor);
    stroke(myColor);
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    if(teleport > 0){
      teleport -= 1;
      myDirectionX = myDirectionX / 2;
      myDirectionY = myDirectionY / 2;
    }

    if(hyperspace && teleport > 0){
      teleport -= 1;
      if (teleport % 4 == 0){//change lines every 4
        for(int i = 0; i < lightningx1.size(); i++){
          lightningx1.remove(i);
          lightningx2.remove(i);
          lightningy1.remove(i);
          lightningy2.remove(i);
        }
        for(int i = 0; i < 4; i++){
          double x1 = 0.0;
          double x2 = 0.0 + (Math.random() * 3) - 1;
          double y1 = 0.0;
          double y2 = 0.0 + (Math.random() * 3) - 1;
          while(x2 > -30 && x2 < 30 || y2 < 30 && y2 > 30){
            lightningx1.add(x1);
            lightningx2.add(x2);
            lightningy1.add(y1);
            lightningy2.add(y2);
            x1 = x2;
            y1 = y2;
            x2 += (Math.random() * 3) - 1;
            y2 += (Math.random() * 3) - 1;
          }
        }
        strokeWeight(2);
        stroke(12, 180, 199, 90);
        for(int i = 0; i < lightningx1.size() - 4; i += 4){
          double x1 = lightningx1.get(i);
          double x2 = lightningx2.get(i);
          double y1 = lightningy1.get(i);
          double y2 = lightningy2.get(i);
          line((float)(x1), (float)(y1), (float)(x2), (float)(y2));
        }
        strokeWeight(1);
      }
    }else if(hyperspace && teleport == 0){
      myDirectionY = myDirectionX = 0;
      myCenterY = (Math.random() * 600) + 1;
      myCenterX = (Math.random() * 600) + 1;
      hyperspace = false;
    }
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(moving){
      strokeWeight(3);
      stroke(0, 195, 230, 70);
      line(-5, 0, -20, 0);
      line(-5, 3, -20, 7);
      line(-5, -3, -20, -7);
      strokeWeight(1);
    }
    if(turningRight){
      strokeWeight(3);
      stroke(0, 200, 255, 50);
      line(16, 5, 15, 11);
      strokeWeight(1);
    }
    if(turningLeft){
      strokeWeight(3);
      stroke(0, 200, 255, 50);
      line(16, -5, 15, -11);
      strokeWeight(1);
    }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void moving(boolean check) {
    moving = check;
  }
  public void left(boolean check) {
    turningLeft = check;
  }
  public void right(boolean check) {
    turningRight = check;
  }
  public void hyperspace(){
    myDirectionX = myDirectionX / 2;
    myDirectionY = myDirectionY / 2;
    hyperspace = true;
    teleport = 30;
  }
}