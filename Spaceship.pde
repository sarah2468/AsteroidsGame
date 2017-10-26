class Spaceship extends Floater  
{   
  //your code here

  public Spaceship() {
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 2;
    myDirectionY = 2; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 0;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners [0] = 0;
    yCorners [0] = 6;
    xCorners [1] = 13;
    yCorners [1] = 0;
    xCorners [2] = 0;
    yCorners [2] = -6;
    xCorners [3] = 3;
    yCorners [3] = 0;
    xCorners [4] = 0;
    yCorners [4] = 6;
    myColor = 255;
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }

  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }

  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }

  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }

  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}