class Star
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
  public void shine()
  {
    fill(255);
    stroke(255);
    ellipse(myX, myY, (int)(Math.random()*10), (int)(Math.random()*10));
  }
}
