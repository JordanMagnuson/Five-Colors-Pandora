global.roomDirection = global.FORWARD;
with (oRoom)
{
  if (variable_instance_exists(self, "nextRoom"))
    room_goto(oRoom.nextRoom);
}
