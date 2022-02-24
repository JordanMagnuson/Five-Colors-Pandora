global.roomDirection = global.BACKWARD;
with (oRoom)
{
  if (variable_local_exists("previousRoom")) 
    room_goto(oRoom.previousRoom);
}
