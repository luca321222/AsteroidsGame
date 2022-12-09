class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.spdX();
    myYspeed = theShip.spdY();
    myPointDirection = theShip.getPoint();
    accelerate(.6);
    myColor = color(108, 197, 237);
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
}
