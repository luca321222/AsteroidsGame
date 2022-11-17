Spaceship P1 = new Spaceship(255, 93, 93);
Spaceship P2 = new Spaceship(95, 134, 247);
Star[] stars = new Star[100];
public void setup() 
{
  size(400, 400);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].shine();
  }
  P1.show();
  P1.move();
  P2.show();
  P2.move();
}
public void keyPressed()
{
  //P1
  if (key == 'w' || key == 'W')
  {
    P1.accelerate(1);
  }
  if (key == 'a' || key == 'A')
  {
    P1.turn(-20);
  }
  if (key == 'd' || key == 'D')
  {
    P1.turn(20);
  }
  if (key == 's' || key == 'S')
  {
    P1.accelerate(-1);
  }
  if (key == 'e' || key == 'E')
  {
    P1.Hyperspace();
  }

  //P2
  if (key == 'i' || key == 'I')
  {
    P2.accelerate(1);
  }
  if (key == 'j' || key == 'J')
  {
    P2.turn(-20);
  }
  if (key == 'l' || key == 'L')
  {
    P2.turn(20);
  }
  if (key == 'k' || key == 'K')
  {
    P2.accelerate(-1);
  }
  if (key == 'o' || key == 'O')
  {
    P2.Hyperspace();
  }
}
