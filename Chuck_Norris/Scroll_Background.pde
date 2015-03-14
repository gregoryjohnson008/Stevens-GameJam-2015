int bgX;
int bgSpeed;
PImage backGround;
String backGroundName = "move_back.png";
void scrollBackground()
{
  if(character.xPos + character.getWidth() >= width/2 && xVel>0)
  {
    bgSpeed = moveVal;
    image(backGround,bgX,-580);
    bgX -= bgSpeed;
    if(bgX <= -(width*2))
    {
      bgX = 0;
    }
  }
  else
  {
    bgSpeed=0;
    image(backGround,bgX,-580);
  }
}

