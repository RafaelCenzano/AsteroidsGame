class Spaceship extends Floater  
{
  boolean moving, turningLeft, turningRight;
  public Spaceship(){
    moving = turningLeft = turningRight = false;
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
  public void show(){
    fill(myColor);
    stroke(myColor);
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
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

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void moving(boolean check) {
    moving = check;
  }
  public void hyperspace(){
  	myCenterY = (Math.random() * 600) + 1;
  	myCenterX = (Math.random() * 600) + 1;
    myDirectionX = myDirectionY = 0;
  }
}