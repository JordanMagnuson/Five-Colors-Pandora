action_set_alarm(1, 0);
action_set_alarm(15, 1);
if (global.reachedEnd == false)
{
  SS_StopSound(global.musicNebulae);
  SS_StopSound(global.musicSad);
  SS_SetSoundVol(global.sndHell, 10000);
  SS_LoopSound(global.sndHell);
}

