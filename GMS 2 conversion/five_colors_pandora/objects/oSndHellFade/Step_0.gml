vol = SS_GetSoundVol(global.sndHell)
if (vol >= 0)
  SS_SetSoundVol(global.sndHell,vol - 50);
else
{
  SS_StopSound(global.sndHell); 
  instance_destroy();
}

