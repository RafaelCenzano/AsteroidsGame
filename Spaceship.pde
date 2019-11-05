class Spaceship extends Floater  
{   
  public Spaceship(){
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
}
