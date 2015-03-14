boolean start;
boolean main;
boolean end;

int bulletAmount=15;
int enemyAmount =10;
float prevMillis;

//ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Bullet [] bullets = new Bullet[bulletAmount];
Enemy [] enemy = new Enemy[enemyAmount];

int xPos, yPos, moveVal, isJumping, yinc, xVel, startX, startY;

int startHeight;
Character character;


void setup()
{
  size(displayWidth, displayHeight);
  startHeight = height - 366;
  
  xPos = 25;
  yPos = startHeight;
  character = new Character (xPos, yPos);
  for(int i=0; i<enemyAmount; i++)
  {
    enemy[i] = new Enemy(int(random(width/2,width-100)), yPos);
  }
  
  moveVal = 15;
  isJumping = 0;
  
  start = true;
  main = end = false;
  backGround= loadImage(backGroundName);
  bull = loadImage(bullName);
  bgX=0;
  bgSpeed=1;
  for(int i=0; i<bulletAmount; i++)
  {
    bullets[i] = new Bullet(-100, -100, 0);
  }
  prevMillis = millis();
  
  frameRate(15);
  println("Width: " + width);
}
void draw()
{
  background(0);
  scrollBackground();
  //fill(255, 0,0);
  //rect(width/2 - 6 , 0, 12, height);
  
  characterMove();
  
  if(start)
  {
    for(int i=0; i<bulletAmount; i++)
    {
      bullets[i].display();
      bullets[i].update();
      for(int j=0; j<enemyAmount; j++)
      {
        checkHit(i,j);
      }
    }
    
    character.display();
    for(int i=0; i<enemyAmount; i++)
    {
      enemy[i].display();
    }
  }
  else if(main)
  {
    
  }
  else
  {
    
  }
}


