class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid() {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = ((Math.random()*3)-1);
    myDirectionY = ((Math.random()*3)-1);; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 0;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners [0] = -7;
    yCorners [0] = -6;
    xCorners [1] = 7;
    yCorners [1] = -8;
    xCorners [2] = 6;
    yCorners [2] = 5;
    xCorners [3] = -8;
    yCorners [3] = 6;

    myColor = #A0E3DE;
    rotSpeed = (int)((Math.random()*5)-2);
  }
  //private int asteroidSpeed = (int)((Math.random()*5)-2);
  //private int asteroidDir = (int)(Math.random()*80+PI);

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
  public void move() {
    
    turn(rotSpeed);
    super.move();
  }
  
}