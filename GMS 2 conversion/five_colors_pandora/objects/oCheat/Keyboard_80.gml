global.roomDirection = global.BACKWARD;
with (oRoom)
{
  if (variable_instance_exists(self, "previousRoom"))
    room_goto(oRoom.previousRoom);
}
