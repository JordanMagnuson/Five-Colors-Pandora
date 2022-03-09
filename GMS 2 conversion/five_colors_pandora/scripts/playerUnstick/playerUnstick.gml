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
			if(global.FOREGROUND_ACTIVE){
			    if (collision_rectangle(x-5,y-15,x+4,y-5, oForeground,true,false) && collision_rectangle(x-5,y+5,x+4,y+14, oForeground,true,false)) 
			    {
			      //Collision with top and bottom: go left or right (must be in wall)
			      x = x - 1*gravSign;
				  
			    }
			    else if (collision_rectangle(x-5,y-15,x+4,y-5, oForeground,true,false)) 
			    {
			      //Collision with top
			      y = y + 1;
			    }
			    else if (collision_rectangle(x-5,y+5,x+4,y+14, oForeground,true,false)) 
			    {
			      //Collision with bottom
			      y = y - 1;
				  
			    }                 
			    else
					break;
			}
			else{
				if (collision_rectangle(x-5,y-15,x+4,y-5, oMidground,true,false) && collision_rectangle(x-5,y+5,x+4,y+14, oMidground,true,false)) 
			    {
			      //Collision with top and bottom: go left or right (must be in wall)
			      x = x - 1*gravSign;
				  show_debug_message("playerUnstick line 39: x = x - 1*gravSign")
			    }
			    else if (collision_rectangle(x-5,y-15,x+4,y-5, oMidground,true,false)) 
			    {
			      //Collision with top
			      y = y + 1;
			    }
			    else if (collision_rectangle(x-5,y+5,x+4,y+14, oMidground,true,false)) 
			    {
			      //Collision with bottom
			      y = y - 1;
			    }                 
			    else
					break;
			}
	    }
	    break;
	  case oPlayerBalloon:    
	    for (i=0; i<20; i+=1)
	    {
			if(global.FOREGROUND_ACTIVE){
			    topLeft = collision_rectangle(x-15,y-15,x-5,y-5, oForeground,true,false);
			    topMiddle = collision_rectangle(x-5,y-15,x+5,y-5, oForeground,true,false);
			    topRight = collision_rectangle(x+5,y-15,x+14,y-5, oForeground,true,false);
			    bottomLeft = collision_rectangle(x-15,y+5,x-5,y+14, oForeground,true,false);
			    bottomMiddle = collision_rectangle(x-5,y+5,x+5,y+14, oForeground,true,false);
				bottomRight = collision_rectangle(x+5,y+5,x+14,y+14, oForeground,true,false);
			    leftMiddle = collision_rectangle(x-15,y-5,x-5,y+5, oForeground,true,false);
			    rightMiddle = collision_rectangle(x+5,y-5,x+14,y+5, oForeground,true,false);
			}
			else{
			    topLeft = collision_rectangle(x-15,y-15,x-5,y-5, oMidground,true,false);
			    topMiddle = collision_rectangle(x-5,y-15,x+5,y-5, oMidground,true,false);
			    topRight = collision_rectangle(x+5,y-15,x+14,y-5, oMidground,true,false);
			    bottomLeft = collision_rectangle(x-15,y+5,x-5,y+14, oMidground,true,false);
			    bottomMiddle = collision_rectangle(x-5,y+5,x+5,y+14, oMidground,true,false);
				bottomRight = collision_rectangle(x+5,y+5,x+14,y+14, oMidground,true,false);
			    leftMiddle = collision_rectangle(x-15,y-5,x-5,y+5, oMidground,true,false);
			    rightMiddle = collision_rectangle(x+5,y-5,x+14,y+5, oMidground,true,false);
			}
      
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
