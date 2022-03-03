//window_set_size(room_width, room_height);
//surface_resize(application_surface, room_width, room_height);


if (global.destroyedRoom01)
  room_goto(room01D);

/*
if (global.roomDirection == global.FORWARD)
{
  SS_LoopSound(global.musicNebulae);
}
*/

alarm_set(1, 0);
nextRoom = room02;