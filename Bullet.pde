class Bullet extends Floater
{
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    double dRadians = bob.getPointDirection()*(Math.PI/180);     
    myDirectionX = 1.6 * Math.cos(dRadians) + bob.getDirectionX();
    myDirectionY = 1.6 * Math.cos(dRadians) + bob.getDirectionY();//holds x and y coordinates of the vector for direction of travel   
    myPointDirection = bob.getPointDirection();
    myColor = #FF4BAB;
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
  public void show()
  {
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
    
  }
}