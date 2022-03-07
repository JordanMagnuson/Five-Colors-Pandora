function playerRestartRoom() {
	instance_create(0,0,oFreezeInput);
	image_angle = 0;


	// Place player at correct door, depending on direction traveling
	if (global.roomDirection == global.FORWARD)
	{
	  if instance_exists(oDoorEnter)
	  {
	    x = oDoorEnter.x + oDoorEnter.sprite_width + 20;
	    y = oDoorEnter.y + 50;  
	  }
	}
	else
	{
	  x = oDoorExit.x - 20;
	  y = oDoorExit.y + 50;  
	}  

	//Change active myLayer to foreground
	global.activeLayer = global.FOREGROUND;
	changeActiveLayer();  

	instance_change(oPlayerStick,true);



}
