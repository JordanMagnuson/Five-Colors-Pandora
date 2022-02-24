action_set_alarm(5, 0);
if (place_meeting(x,y,oPlayer) && layer == global.activeLayer)
{
  global.roomDirection = global.FORWARD;
  room_goto(oRoom.nextRoom);
}
