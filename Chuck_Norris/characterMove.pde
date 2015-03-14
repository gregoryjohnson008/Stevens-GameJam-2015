  public void characterMove()
  {
    if (keyPressed)
    {
     if((key == 'd' || key == 'D') && isJumping == 0)
      {
        if(xPos < width/2)
        {
          int valAdd = min(width/2, xPos + character.getWidth() + moveVal) == width/2 ? width/2 - xPos - character.getWidth() : moveVal;
          xPos += valAdd;
          xVel = moveVal;
        }
        else
        {
          
        }
        character.changePos(xPos, yPos, 'f');
      }
     else if((key == 'a' || key == 'A') && isJumping == 0)
      {
        int valSub = max(0, xPos - moveVal) == 0 ? xPos : moveVal;
        xPos -= valSub;
        xVel = -1 * moveVal;
        character.changePos(xPos, yPos, 'b');
      }
      else if(key == ' ' && isJumping == 0)
      {
         isJumping = 1;
         yinc = -15; 
      }
      
    }
    else
    {
      if(isJumping == 0)
      {
         xVel = 0; 
      }
       character.setIdle(); 
    }
    
    if(isJumping == 1)
    {
     yPos = yPos + yinc;
     yinc = yinc + 1;
     xPos = min(width/2 - character.getWidth(), xPos + xVel);
     character.changePos(xPos, yPos, 'j'); 
    }
    
    if(isJumping == 0 && yPos < startHeight)
    {
      
     isJumping=1;   //to fall we go into jump mode but instead of jumping set upthrust to 0
  
     yinc=0;        //set upthrust to 0
    }
    
   if(yPos > startHeight)
   {       //is the character falling out of the bottom of the screen?
  
     yPos= startHeight;         //if so set y position to 420
  
     isJumping=0;    //stop jumping/falling
   }
  }
