class Character
{
  int maxHealth, currHealth, bulletNum, bulletDmg, xPos, yPos, moveVal, animNum;
  PImage character; 
  PImage characterIdle;
  PImage characterWalk[] = new PImage[9];
  PImage characterWalkB[] = new PImage[9];
  PImage characterJump[] = new PImage[3];
  
  Character(int xPos, int yPos)
  {
    maxHealth = 100;
    currHealth = maxHealth;
    bulletNum = 15;
    bulletDmg = 20;
    moveVal = 50;
    animNum = 0;
   
   this.xPos = xPos;
   this.yPos = yPos;
   characterIdle = loadImage("jughead_idle0001.png");
   for(int i = 0; i < 9; i++)
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
   }
    character = characterIdle;
  }
  
  void display()
  {
    image(character, xPos, yPos);
  }
  
  void update()
  {
    image(character, xPos, yPos);
  } 
  
  public void changePos(int x, int y, char dir)
  {
    if(dir == 'f')
    {
      character = characterWalk[animNum = (animNum + 1) % 8];
    }
    else if(dir == 'b')
    {
      character = characterWalkB[animNum = (animNum + 1) % 8];
    }
    else if(dir == 'j')
    {
      //jumping
      character = characterJump[animNum = (animNum + 1) % 2];
    }
    xPos = min(width/2, x);
    yPos = min(startHeight, y); 
  }
  
  public int getWidth()
  {
   return character.width;
  }
  
  public int getHeight()
  {
    return character.height;
  }
  
  public void setIdle()
  {
    character = characterIdle;
    animNum = 0; 
  }
}
