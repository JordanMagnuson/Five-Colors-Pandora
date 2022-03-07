function gameInit() {
	//SuperSound
	//SS_Init();
	//global.musicNebulae = SS_LoadSound("music/gurdonark_-_William_and_Caroline_(Nebulae).ogg",0);
	//global.musicSad = SS_LoadSound("music/Long Note Four - incompetech_trimmed.ogg",0);
	//global.musicDeath = SS_LoadSound("music/Long Note Four - incompetech_start.ogg",0);
	//global.sndHell = SS_LoadSound("music/39222__amliebsch__voice_from_hell.ogg",0);

	//Sound controllers
	global.firstRoom02 = true;

	//Which rooms are destroyed
	global.destroyedRoom01 = 0;
	global.destroyedRoom02 = 0;
	global.destroyedRoom03 = 0;
	global.destroyedRoom04 = 0;
	global.destroyedRoom05 = 0;
	global.justDestroyed = 0; //True the first time player is taken to a destroyed room, when they have just destroyed it

	//Layers (foreground, background, etc.)
	global.FOREGROUND = 1;
	global.MIDGROUND = 2;
	global.BACKGROUND = 3;
	global.FOREGROUND_COLOR = c_white;
	global.BACKGROUND_COLOR = c_white;
	global.activeLayer = global.FOREGROUND;
	global.FOREGROUND_GRAV = 0;
	global.MIDGROUND_GRAV = 0;
	global.grav = global.FOREGROUND_GRAV;

	//Player morphing
	global.MORPH_OPTIONS = 2;
	global.STICK = 1;
	global.BALLOON = 2;
	global.morphIndex = global.BALLOON; //morphIndex is what will be morphed to next

	//Traveling between rooms
	global.FORWARD = 1;
	global.BACKWARD = 2;
	global.roomDirection = 1;

	//Scale factor - 1 pixel = 
	global.pixelSize = 10;

	//colors
	global.COLOR_GRAY = $606060;
	global.COLOR_BLUE = $ab281a; //$e8984b;
	global.COLOR_PINK = $d155ff;
	global.COLOR_YELLOW = $22f7ff;
	global.COLOR_GREEN = $065e1b //60fa84;
	global.COLOR_PURPLE = $791d46;//461d79

	global.canFly = false;
	global.reachedEnd = false;

	global.playerColor = global.COLOR_GRAY;


	room_goto_next();



}
