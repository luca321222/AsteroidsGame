class Asteroid extends Floater
{
  private double turnSpeed;
  public Asteroid()
  {
    corners = 12;
    xCorners = new int[]{-10, -11, -6, -5, -4, 3, 6, 4, 0, -2, -4, -6};
    yCorners = new int[]{9, 5, -5, -7, -7, -3, 1, 4, 7, 9, 7, 8};
    myColor = color(206);
    myCenterX = (Math.random()*350)+20;
    myCenterY = (Math.random()*350)+20;
    myXspeed = (int)(Math.random()*5);
    myYspeed = (int)(Math.random()*5);
    myPointDirection = (Math.random()*360);
    turnSpeed = 5;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void move()
  {
    super.move();
    super.turn(turnSpeed);
  }
}
