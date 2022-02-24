previousRoom = room05;

global.FOREGROUND_GRAV = 5
global.MIDGROUND_GRAV = 5

global.FOREGROUND_COLOR = $606060;
global.MIDGROUND_COLOR = $606060;

if (global.reachedEnd) {
  with (oStarMidground) instance_destroy();
  oDoor.x = 50;
  oDoor.y = 100;
  __view_set( e__VW.YView, 0, 0 );
}
else
{
  __view_set( e__VW.YView, 0, 200 );
}
script_execute(roomCreate,0,0,0,0,0);
