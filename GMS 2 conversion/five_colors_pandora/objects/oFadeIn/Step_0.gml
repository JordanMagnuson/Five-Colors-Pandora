if fade > 0
  fade-=1/(3*room_speed);//factor in front of room speed is how many seconds to take to fade
else
{
  if (room != roomCredits && global.destroyedRoom01 && global.destroyedRoom02 && global.destroyedRoom03 && global.destroyedRoom04 && global.destroyedRoom05)
  {
    with (oFreezeInput) instance_destroy();
    freeze = instance_create(0,0,oFreezeInput);
    freeze.alarm[1] = 3000;
    fadeOut = instance_create(0,0,oFadeOut);
    fadeOut.roomGoto = roomCredits;
  }
  instance_destroy();  
}
