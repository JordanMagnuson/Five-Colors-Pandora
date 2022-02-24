function playerStickStep() {
	//If player falls off screen, return to start
	if ((sign(global.grav)>0 && y > room_height + sprite_height) || (sign(global.grav)<0 && y < 0 - sprite_height))
	{
	  playerRestartRoom();
	}

	playerControls();

	playerStickVelocity();

	playerStickPosition();

	playerStickRotation();



}
