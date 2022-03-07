if (global.justDestroyed)
{
  //SS_PlaySound(global.musicDeath);
  instance_create(x,y,oFadeIn);
}


action_set_alarm(1, 0);
