function roomCreate() {
	//Freeze input for a moment
	instance_create(0,0,oFreezeInput);

	//Check if player is color of chest in room
	if instance_exists(oChest)
	{
	  if (global.playerColor == oChest.color)
	  alarm[1] = 5; //alarm[1] tells room to check for player collision with chest
	}

	//Make sure player is correct morph
	/*
	switch (global.morphIndex)
	{
	  case global.STICK:
	    with(oPlayer) instance_change(oPlayerStick,true);
	    break;
	  case global.BALLOON:
	    with(oPlayer) instance_change(oPlayerBalloon,true);
	    break;
	}
	*/

	// Place player at correct door, depending on direction traveling
	if (global.justDestroyed)
	{
	  global.activeLayer = oChest.myLayer;
	  oPlayer.x = oChest.x+oChest.sprite_width/2;
	  oPlayer.y = oChest.y+oChest.sprite_height/2;
	  global.justDestroyed = false;
	}
	else
	{
	  with (oPlayer) playerRestartRoom();
	}
	changeActiveLayer();



}
