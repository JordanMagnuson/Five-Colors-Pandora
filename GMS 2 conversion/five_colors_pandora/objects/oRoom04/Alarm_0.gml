previousRoom = room03;
nextRoom = room05;

global.FOREGROUND_GRAV = 3;
global.MIDGROUND_GRAV = 3;

global.FOREGROUND_COLOR = $606060;
global.MIDGROUND_COLOR = $606060;

oChest.layer = global.MIDGROUND;
oChest.color = global.COLOR_GREEN;
script_execute(roomCreate,0,0,0,0,0);
