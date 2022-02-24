gravSign = sign(global.grav);

/**************************************
 Y Velocity
***************************************/
if (kUp) 
  yVel -= gravSign*BALLOON_YACC;
else if (kDown) 
  yVel += gravSign*BALLOON_YACC;
else if (yVel > BALLOON_YDEC) 
  yVel -= gravSign*BALLOON_YDEC;
else if (yVel < -BALLOON_YDEC) 
  yVel += gravSign*BALLOON_YDEC;
else 
  yVel = 0;
  
//Max velocity
if (yVel > BALLOON_YVEL_MAX)
  yVel = BALLOON_YVEL_MAX;
else if (yVel < -BALLOON_YVEL_MAX)
  yVel = -BALLOON_YVEL_MAX;

/**************************************
 X Velocity
***************************************/
//xVelIdeal determined by water level
BALLOON_xVelIdeal = facing*((BALLOON_XVEL_MAX * (BALLOON_FIELD_HEIGHT - (y - BALLOON_FLOOR))/BALLOON_FIELD_HEIGHT) + (BALLOON_XVEL_MIN * ((y - BALLOON_FLOOR)/BALLOON_FIELD_HEIGHT))); 

if (xVel > BALLOON_xVelIdeal) 
  xVel = xVel - BALLOON_XACC;
else if (xVel < BALLOON_xVelIdeal)
  xVel = xVel + BALLOON_XACC;

//Max velocity
if (xVel > BALLOON_XVEL_MAX)
  xVel = BALLOON_XVEL_MAX;
