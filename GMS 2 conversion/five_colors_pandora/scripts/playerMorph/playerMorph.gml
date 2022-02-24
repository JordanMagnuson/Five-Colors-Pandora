function playerMorph() {
	//If changing to balloon
	if (global.morphIndex == global.BALLOON && global.canFly && y>0 && y <room_height)
	{
	  if (!collision_rectangle(x-15,y-15,x+14,y+14,oSolid,true,false))
	  {
	    instance_change(oPlayerBalloon,false);
	    successfulMorph = true;
	  }
	  else if (facing > 0 && !collision_rectangle(x-25,y-15,x,y+14,oSolid,true,false))
	  {
	    x -= 10;
	    instance_change(oPlayerBalloon,false);
	    successfulMorph = true;
	  }
	  else if (facing < 0 && !collision_rectangle(x,y-15,x+24,y+14,oSolid,true,false))
	  {
	    x += 10;
	    instance_change(oPlayerBalloon,false);
	    successfulMorph = true;
	  }   
	  else if (facing > 0 && !collision_rectangle(x,y-15,x+24,y+14,oSolid,true,false))
	  {
	    x += 10;
	    instance_change(oPlayerBalloon,false);
	    successfulMorph = true;
	  }  
	  else if (facing < 0 && !collision_rectangle(x-25,y-15,x,y+14,oSolid,true,false))
	  {
	    x -= 10;
	    instance_change(oPlayerBalloon,false);
	    successfulMorph = true;
	  }   
	  else 
	    successfulMorph = false;
	}

	//If changing to stick
	else if (global.morphIndex == global.STICK)
	{
	  instance_change(oPlayerStick,false);
	  successfulMorph = true;
	}

	//Were not able to morph
	else
	  successfulMorph = true;  

	//If morphed, update index
	if (successfulMorph)
	{
	  global.morphIndex = global.morphIndex + 1;
	  if (global.morphIndex > global.MORPH_OPTIONS+1)
	    global.morphIndex = 1;
	}

    



}
