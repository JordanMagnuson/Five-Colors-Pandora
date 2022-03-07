global.roomDirection = global.BACKWARD;
with (oRoom)
{
  if (variable_instance_exists(oRoom, "previousRoom"))
    room_goto(oRoom.previousRoom);
}