

class Enemy
{
  int xEPos, yEPos;
  int maxHealth, currHealth, bulletNum, bulletDmg, moveVal, animNum;
  PImage enemy; 
  PImage enemyIdle;
  PImage enemyWalk[] = new PImage[8];
  
  Enemy(int xPos, int yPos)
  {
    maxHealth = 100;
    currHealth = maxHealth;
    bulletNum = 15;
    bulletDmg = 20;
    moveVal = 50;
    animNum = 0;
   
   xEPos = xPos;
   yEPos = yPos;
   enemyIdle = loadImage("enemy_fast_shoot_3.png");
   
   /*for(int i = 0; i < 9; i++)
   {
     characterWalk[i] = loadImage("jughead_walking000" + (i+1) + ".png"); 
   }
   for(int i = 8, j = 0; i >= 0; i--, j++)
   {
     characterWalkB[j] = loadImage("jughead_walking000" + (i+1) + ".png");
   }
   for(int i = 0; i < 3; i++)
   {
     characterJump[i] = loadImage("hero_jumping000" + (i+1) + ".png");
   }*/
    enemy = enemyIdle;
  }
  
  void display()
  {
    image(enemy, xEPos, yEPos);
  }
  
  void update()
  {
    image(enemy, xEPos, yEPos);
  } 
  
  public void changePos(int x, int y, char dir)
  {
    xEPos = x;
    yEPos = y; 
  }
  
  public int getWidth()
  {
   return enemy.width;
  }
  
  public int getHeight()
  {
    return enemy.height;
  }
  
  public void setIdle()
  {
    enemy = enemyIdle;
    animNum = 0; 
  }
  
    
    
}
