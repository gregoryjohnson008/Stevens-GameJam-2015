void checkHit(int i, int j)
{
  if(bullets[i].bulletX + bull.width/2 > enemy[j].xEPos &&
     bullets[i].bulletX - bull.width/2 < enemy[j].xEPos + enemy[j].getWidth() &&
     bullets[i].bulletY + bull.height/2 > enemy[j].yEPos &&
     bullets[i].bulletY - bull.height/2 < enemy[j].yEPos + enemy[j].getHeight()
     )
     {
       enemy[j].currHealth = enemy[j].currHealth - 50;
       if(enemy[j].currHealth < 1)
       {
         enemy[j].xEPos = -2000;
       }
       bullets[i].bulletX = -1000;
       bullets[i].bulletSpeedX = 0;
     }
}
