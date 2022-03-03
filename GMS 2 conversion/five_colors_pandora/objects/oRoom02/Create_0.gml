if (global.destroyedRoom02)
  room_goto(room02D);
  
//if (global.firstRoom02)
//{
//  global.firstRoom02 = false;
//  SS_LoopSound(global.musicNebulae);
//}

//action_set_alarm(1, 0);
alarm_set(1,0);
previousRoom = room01;
nextRoom = room03;