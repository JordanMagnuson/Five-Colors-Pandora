previousRoom = room02;
nextRoom = room04;

global.FOREGROUND_GRAV = 3;
global.MIDGROUND_GRAV = 3;

global.FOREGROUND_COLOR = $606060;
global.MIDGROUND_COLOR = $606060;

oChest.myLayer = global.MIDGROUND;
oChest.color = global.COLOR_YELLOW;
script_execute(roomCreate,0,0,0,0,0);
