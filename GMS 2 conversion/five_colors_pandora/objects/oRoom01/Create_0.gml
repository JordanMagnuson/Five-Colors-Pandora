if (global.destroyedRoom01)
  room_goto(room01D);
  
if (global.roomDirection == global.FORWARD)
{
  SS_LoopSound(global.musicNebulae);
}

action_set_alarm(1, 0);
