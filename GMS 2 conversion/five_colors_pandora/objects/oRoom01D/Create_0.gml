if (global.justDestroyed)
{
  //SS_PlaySound(global.musicDeath);
  instance_create(x,y,oFadeIn);
}


alarm_set(1, 0);
