Spaceship P1 = new Spaceship(255, 93, 93);
Spaceship P2 = new Spaceship(95, 134, 247);
Star[] stars = new Star[100];
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
ArrayList <Bullet> phaser = new ArrayList <Bullet>();
public void setup()
{
  size(400, 400);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for (int i = 0; i < (int)(Math.random()*30)+10; i++)
  {
    belt.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].shine();
  }
  for (int i = 0; i < belt.size(); i++)
  {
    belt.get(i).show();
    belt.get(i).move();
    float d1 = dist((float)P1.getX(), (float)P1.getY(), (float)belt.get(i).getX(), (float)belt.get(i).getY());
    float d2 = dist((float)P2.getX(), (float)P2.getY(), (float)belt.get(i).getX(), (float)belt.get(i).getY());
    if (d1 < 20 || d2 < 20)
    {
      belt.remove(i);
    }
  }
  P1.show();
  P1.move();
  P2.show();
  P2.move();
  for (int i = 0; i < phaser.size(); i++)
  {
    phaser.get(i).move();
    phaser.get(i).show();
  }
  for (int i = 0; i < phaser.size(); i++)
  {
    for (int l = 0; l < belt.size(); l++)
    {
      if (dist((float)phaser.get(i).getX(), (float)phaser.get(i).getY(), (float)belt.get(l).getX(), (float)belt.get(l).getY())< 30)
      {
        phaser.remove(i);
        belt.remove(l);
        break;
      }
    }
  }
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
  if (key == 'q' || key == 'Q')
  {
    phaser.add(new Bullet(P1));
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
  if (key == 'u' || key == 'U')
  {
    phaser.add(new Bullet(P2));
  }
}
