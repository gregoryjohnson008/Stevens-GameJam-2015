PImage bull;
String bullName = "bullet.png";

class Bullet
{
  int bulletSize = 7;
  int bulletTime;
  int bulletCount;
  float bulletX,bulletY;
  float bulletSpeedX, bulletSpeedY;
  
  Bullet(float bulletX, float bulletY, float bulletSpeed)
  {
    this.bulletX = bulletX;
    this.bulletY = bulletY;
    bulletTime = 200;
    bulletSpeedX = bulletSpeedY = bulletSpeed;
  }
  
  void display()
  {
    image(bull,bulletX,bulletY);
    //fill(255,0,0);
    //noStroke();
    //ellipse(bulletX, bulletY, bulletSize, bulletSize);
  }
  
  void update()
  {
    
    if(mousePressed && bulletSpeedX==0 && millis()-prevMillis>200)
    {
      bulletX = character.xPos + character.getWidth()-62;
      bulletY = character.yPos + character.getHeight()*.25;
      bulletSpeedX = 50.0;
      prevMillis = millis();
    }
    bulletX += bulletSpeedX;
    if(bulletX>width)
    {
      bulletX=-100;
      bulletY=-100;
      bulletSpeedX=0;
    }
  } 
 }


    
  
  
