action_set_alarm(5, 0);
if (place_meeting(x,y,oPlayer) && myLayer == global.activeLayer)
{
  global.roomDirection = global.BACKWARD;
  room_goto(oRoom.previousRoom);
}
