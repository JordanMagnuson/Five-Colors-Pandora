global.roomDirection = global.FORWARD;
with (oRoom)
{
  if (variable_instance_exists(oRoom ,"nextRoom"))
	{
	show_debug_message("PRESSED N")
    room_goto(oRoom.nextRoom);
	}
}
