boolean start;
boolean main;
boolean end;

int bulletAmount=15;
float prevMillis;

//ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Bullet [] bullets = new Bullet[bulletAmount];

int xPos, yPos, moveVal, isJumping, yinc, xVel, startX, startY;

int startHeight;
Character character;

void setup()
{
  size(displayWidth, displayHeight);
  startHeight = height - 150;
  
  xPos = 25;
  yPos = startHeight;
  character = new Character (xPos, yPos);
  
  moveVal = 15;
  isJumping = 0;
  
  start = true;
  main = end = false;
  backGround= loadImage(backGroundName);
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
    }
    character.display();
  }
  else if(main)
  {
    
  }
  else
  {
    
  }
}


