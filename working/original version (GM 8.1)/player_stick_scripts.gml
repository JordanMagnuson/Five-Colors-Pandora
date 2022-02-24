#define playerStickCreate
//Constants
XVEL_MAX = 30;
YVEL_MAX = 30;
XACC = 10;
XDEC = 30;
JUMP_VEL = 30;
CLIMB_VEL = 10; //velocity to scale managable slopes

//Initialize variables
xVel = 0;
yVel = 0;
onGround = false;
hfrac = 0;
vfrac = 0;
hint = 0;
vint = 0;
hfrac = 0;
vfrac = 0;
h = 0;
v = 0;

#define playerStickStep
playerControls();

playerStickVelocity();

playerStickPosition();
#define playerStickVelocity
/**************************************
 Y Velocity
***************************************/
if (onGround && kUp) 
{
  yVel = -JUMP_VEL;
  onGround = false;
}
else if (kRight && place_meeting(x+sprite_width/2+1,y,oSolid) && !place_meeting(x+sprite_width/2+1,y-30,oSolid))
  yVel = -CLIMB_VEL;
else if (kLeft && place_meeting(x-sprite_width/2-1,y,oSolid) && !place_meeting(x-sprite_width/2-1,y-30,oSolid))
  yVel = -CLIMB_VEL;  
else if (!onGround) 
  yVel += global.grav;
else 
  yVel = 0;
  
//Max velocity
if (yVel > YVEL_MAX)
  yVel = YVEL_MAX;
else if (yVel < -YVEL_MAX)
  yVel = -YVEL_MAX;

/**************************************
 X Velocity
***************************************/
if (kRight && (xVel + XACC <= XVEL_MAX)) 
  xVel += XACC;
else if (kLeft && (xVel - XACC >= -XVEL_MAX)) 
  xVel -= XACC;
else if (xVel > XDEC && !kRight && !kLeft)
    xVel -= XDEC;
else if (xVel < -XDEC && !kRight && !kLeft)
    xVel += XDEC;
else if (!kRight && !kLeft)
  xVel = 0;


//Max velocity
if (xVel > XVEL_MAX)
  xVel = XVEL_MAX;
#define playerStickPosition
hfrac += xVel;
vfrac += yVel;
hint = hfrac div 1;
vint = vfrac div 1;
hfrac -= hint;
vfrac -= vint;
h = sign(hint);
v = sign(vint);
onGround = false;

repeat (abs(hint))
{
    //Stop if bump into solid
    if (place_meeting(x + h, y, oSolid))
    {
        xVel = 0;
        break;
    }
    else
    {
      x += h;
    }

}

repeat (abs(vint))
{
    if (place_meeting(x, y + v, oSolid))
    {
        yVel = 0;
        if (v == 1)
        {
          onGround= true;
        }
        break;
    }
    else
    {
        y += v;
    }
}
