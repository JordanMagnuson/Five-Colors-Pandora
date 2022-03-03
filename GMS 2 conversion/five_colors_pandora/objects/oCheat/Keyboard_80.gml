global.roomDirection = global.BACKWARD;
with (oRoom)
{
  if (variable_instance_exists(oRoom ,"previousRoom"))
  {
	show_debug_message("PUSHIN P");
    room_goto(oRoom.previousRoom);
  }
}
