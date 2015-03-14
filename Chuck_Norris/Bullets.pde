
class Bullet
{
  int bulletSize = 20;
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
    fill(255,0,0);
    noStroke();
    ellipse(bulletX, bulletY, bulletSize, bulletSize);
  }
  
  void update()
  {
    
    if(mousePressed && bulletSpeedX==0 && millis()-prevMillis>200)
    {
      bulletX = bulletSize/2;
      bulletY = height/2;
      bulletSpeedX = 10.0;
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


    
  
  
