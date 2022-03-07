if (global.destroyedRoom01)
  room_goto(room01D);
  
if (global.roomDirection == global.FORWARD)
{
 // SS_LoopSound(global.musicNebulae);
}

nextRoom = room02;

global.FOREGROUND_GRAV = 3;
global.MIDGROUND_GRAV = 3;

global.FOREGROUND_COLOR = $606060;
global.MIDGROUND_COLOR = $606060;

oChest.myLayer = global.FOREGROUND;
oChest.color = global.COLOR_BLUE;
script_execute(roomCreate,0,0,0,0,0);
