function playerStickVelocity() {
	gravSign = sign(global.grav);

	/**************************************
	 Y Velocity
	***************************************/
	if(global.FOREGROUND_ACTIVE){
		if (onGround && kUp) 
		{
		  yVel = -1*STICK_JUMP_VEL*gravSign;
		  onGround = false;
		}
		else if (kRight && place_meeting(x+1,y,oForeground) && !place_meeting(x+1,y-global.pixelSize*gravSign,oForeground))
		  yVel = -STICK_CLIMB_VEL * gravSign;
		else if (kLeft && place_meeting(x-1,y,oForeground) && !place_meeting(x-1,y-global.pixelSize*gravSign,oForeground))
		  yVel = -STICK_CLIMB_VEL * gravSign;  
		else if (!onGround)
		  yVel += global.grav;
		else 
		  yVel = 0;
	}
	else{
		if (onGround && kUp) 
		{
		  yVel = -1*STICK_JUMP_VEL*gravSign;
		  onGround = false;
		}
		else if (kRight && place_meeting(x+1,y,oMidground) && !place_meeting(x+1,y-global.pixelSize*gravSign,oMidground))
		  yVel = -STICK_CLIMB_VEL * gravSign;
		else if (kLeft && place_meeting(x-1,y,oMidground) && !place_meeting(x-1,y-global.pixelSize*gravSign,oMidground))
		  yVel = -STICK_CLIMB_VEL * gravSign;  
		else if (!onGround)
		  yVel += global.grav;
		else 
		  yVel = 0;
	}
  
	//Max velocity
	if (yVel > STICK_YVEL_MAX)
	  yVel = STICK_YVEL_MAX;
	else if (yVel < -STICK_YVEL_MAX)
	  yVel = -STICK_YVEL_MAX;

	/**************************************
	 X Velocity
	***************************************/
	if (kRight && (xVel + STICK_XACC <= STICK_XVEL_MAX)) 
	  xVel += STICK_XACC;
	else if (kLeft && (xVel - STICK_XACC >= -STICK_XVEL_MAX)) 
	  xVel -= STICK_XACC;
	else if (xVel > STICK_XDEC && !kRight && !kLeft)
	    xVel -= STICK_XDEC;
	else if (xVel < -STICK_XDEC && !kRight && !kLeft)
	    xVel += STICK_XDEC;
	else if (!kRight && !kLeft)
	  xVel = 0;


	//Max velocity
	if (xVel > STICK_XVEL_MAX)
	  xVel = STICK_XVEL_MAX;



}
