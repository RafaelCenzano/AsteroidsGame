class Spaceship extends Floater  
{   
  public Spaceship(){
    //int[] temprectx1 = {-4, -7, -14, -14, -1, -1, -5, 4,  6, 8, 6, 4, -4, -5, -1, -1, -14, -14, -7, -4};
    //int[] temprecty1 = {-2, -4,  -4,  -7, -7, -4, -4, 0, -2, 0, 2, 0,  2,  4,  4,  4,   7,   7,  4, -2};
    //int[] temprectx2 = {-4, -7, -14, -14, -1, -1, -5, 4,  6, 8, 6, 4, -4, -5, -1, -1, -14, -14, -7, -4};
    //int[] temprecty2 = {-2, -4,  -4,  -7, -7, -4, -4, 0, -2, 0, 2, 0,  2,  4,  4,  4,   7,   7,  4, -2};
    //corners = temp1.length;
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
  public void hyperspace(){
  	myCenterY = (Math.random() * 600) + 1;
  	myCenterX = (Math.random() * 600) + 1;
    myDirectionX = myDirectionY = 0;
  }
}