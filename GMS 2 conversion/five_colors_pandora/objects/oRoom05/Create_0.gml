if (global.roomDirection == global.BACKWARD)
{
 // if (SS_IsSoundPlaying(global.sndHell))
    instance_create(0,0,oSndHellFade);
  if (global.reachedEnd)
  {
   // if (!SS_IsSoundPlaying(global.musicSad))
      instance_create(0,0,oMusicSadFadeIn);
  }
  else
  {
   // if (!SS_IsSoundPlaying(global.musicNebulae))
    //  SS_LoopSound(global.musicNebulae);  
  }
}

if (global.destroyedRoom05)
  room_goto(room05D);

action_set_alarm(1, 0);
