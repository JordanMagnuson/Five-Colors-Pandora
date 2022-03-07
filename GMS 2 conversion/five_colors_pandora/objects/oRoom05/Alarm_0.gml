previousRoom = room04;
nextRoom = room06;

global.FOREGROUND_GRAV = -1;
global.MIDGROUND_GRAV = 1;

global.FOREGROUND_COLOR = $606060;
global.MIDGROUND_COLOR = $606060;

oChest.myLayer = global.MIDGROUND;
oChest.color = global.COLOR_PURPLE;
script_execute(roomCreate,0,0,0,0,0);
