global.roomDirection = global.FORWARD;
with (oRoom)
{
  if (variable_local_exists("nextRoom"))
    room_goto(oRoom.nextRoom);
}
