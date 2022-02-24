function playerUnstick() {
	//If the player has been sent off the screen, restart the room
	if (x < -20 || x > room_width + 20 || y < -100 || y > room_height + 100)
	  playerRestartRoom();

	gravSign = sign(global.grav);

	switch (object_index)
	{
	  case oPlayerStick:
	    for (i=0; i<20; i+=1)
	    {
	      if (collision_rectangle(x-5,y-15,x+4,y-5, oSolid,true,false) && collision_rectangle(x-5,y+5,x+4,y+14, oSolid,true,false)) 
	      {
	        //Collision with top and bottom: go left or right (must be in wall)
	        x = x - 1*gravSign;
	      }
	      else if (collision_rectangle(x-5,y-15,x+4,y-5, oSolid,true,false)) 
	      {
	        //Collision with top
	        y = y + 1;
	      }
	      else if (collision_rectangle(x-5,y+5,x+4,y+14, oSolid,true,false)) 
	      {
	        //Collision with bottom
	        y = y - 1;
	      }                 
	      else
	        break;
	    }
	    break;
	  case oPlayerBalloon:    
	    for (i=0; i<20; i+=1)
	    {
	      topLeft = collision_rectangle(x-15,y-15,x-5,y-5, oSolid,true,false);
	      topMiddle = collision_rectangle(x-5,y-15,x+5,y-5, oSolid,true,false);
	      topRight = collision_rectangle(x+5,y-15,x+14,y-5, oSolid,true,false);
	      bottomLeft = collision_rectangle(x-15,y+5,x-5,y+14, oSolid,true,false);
	      bottomMiddle = collision_rectangle(x-5,y+5,x+5,y+14, oSolid,true,false);
	      bottomRight = collision_rectangle(x+5,y+5,x+14,y+14, oSolid,true,false);
	      leftMiddle = collision_rectangle(x-15,y-5,x-5,y+5, oSolid,true,false);
	      rightMiddle = collision_rectangle(x+5,y-5,x+14,y+5, oSolid,true,false);
      
	      if (topLeft)
	      {
	        if (bottomRight)
	          playerRestartRoom();
	        else if (topRight)
	          y = y + 1;
	        else if (bottomLeft)
	          x = x + 1
	        else if (gravSign < 0)
	          y = y + 1;
	        else 
	          x = x + 1;
	      }
          
	      else if (topRight)
	      {
	        if (bottomLeft)
	          playerRestartRoom();
	        if (bottomRight)
	          x = x - 1;
	        else if (gravSign < 0)
	          y = y + 1;
	        else 
	          x = x - 1;
	      }    
          
	      else if (bottomLeft)
	      {
	        if (bottomRight)
	          y = y - 1;
	        else if (gravSign > 0)
	          y = y - 1;
	        else
	          x = x + 1;
	      }
          
	      else if (bottomRight)
	      {
	        if (gravSign > 0)
	          y = y - 1;
	        else 
	          x = x - 1;
	      }
        
	      else if (topMiddle)
	        y = y + 1;
        
	      else if (bottomMiddle)
	        y = y - 1;    
        
	      else
	        break;
	    }
	    break;
	  default:
	    break;
    
	}



}
