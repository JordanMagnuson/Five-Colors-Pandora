function playerCreate() {
	//show_debug_message("PLAYERCREATE")
	//Constants - Stick
	STICK_XVEL_MAX = 12;
	STICK_YVEL_MAX = 20;
	STICK_XACC = 8;
	STICK_XDEC = 10;
	STICK_JUMP_VEL = 15;
	STICK_CLIMB_VEL = 10; //velocity to scale managable slopes

	//Constants - Balloon 
	BALLOON_YACC = 0.1;
	BALLOON_YDEC = 0.1;
	BALLOON_YVEL_MAX = 4;

	BALLOON_XACC = 0.1;
	BALLOON_XVEL_MAX = 5;
	BALLOON_XVEL_MIN = 2;

	BALLOON_ANGLE_ACC = 0.05;
	BALLOON_ANGLE_VEL_MAX = 0.5;

	BALLOON_FLOOR = 0;  //Lowest y boat can go
	BALLOON_CEILING = room_height;;  //Highest y boat can go
	BALLOON_FIELD_HEIGHT = BALLOON_CEILING - BALLOON_FLOOR;

	//Facing
	RIGHT = 1;
	LEFT = -1;

	//Initialize variables
	BALLOON_xVelIdeal = 0;
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
	rotation = 1;
	angleVel = 0;
	LEFT_BOUNDS = 0;
	RIGHT_BOUNDS = room_width - sprite_width;
	layer = global.activeLayer;
	facing = RIGHT;
	successfulMorph = 0;



}
