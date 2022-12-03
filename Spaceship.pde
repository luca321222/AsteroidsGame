class Spaceship extends Floater  
{   
  public Spaceship(int r, int g, int b)
  {
    corners = 7;
    xCorners = new int[]{-5, -1, 2, 7, 2, -1, -5};
    yCorners = new int[]{-10, -2, -7, 0, 7, 2, 10};
    myColor = color(r, g, b);
    myCenterX = (Math.random()*151)+50;
    myCenterY = (Math.random()*151)+50;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  public void Hyperspace()
  {
    myCenterX = (Math.random()*301)+50;
    myCenterY = (Math.random()*301)+50;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (Math.random()*360);
  }
}
