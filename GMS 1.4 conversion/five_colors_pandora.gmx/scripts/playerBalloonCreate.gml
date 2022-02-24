//CONSTANTS
YACC = 0.3;
YDEC = 0.2;
YVEL_MAX = 4;

XACC = 0.05;
XVEL_MAX = 12;
XVEL_MIN = 2;

FLOOR = 0;  //Lowest y boat can go
CEILING = room_height;;  //Highest y boat can go
FIELD_HEIGHT = CEILING - FLOOR;

//Initialize variables
xVel = 0;
xVelIdeal = 0; //This is the xVel that the boat should be at, for its given y. Will accelerate or decelerate to this xVel
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
