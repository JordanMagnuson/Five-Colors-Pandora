function playerBalloonStep() {
	//If player falls off screen, return to start
	if (sign(global.grav) > 0)
	  belowScreen = (y > room_height + sprite_height);
	else
	  belowScreen = (y < 0 - sprite_height);
	if (belowScreen)
	  playerRestartRoom();

	playerControls();

	playerBalloonVelocity();

	playerBalloonPosition();

	playerBalloonRotation();



}
