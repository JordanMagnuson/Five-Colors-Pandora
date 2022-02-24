action_set_alarm(15, 1);
if(oPlayer.y<200)
  __view_set( e__VW.YView, 0, 0 );
else
  __view_set( e__VW.YView, 0, 200 );
  
if (oPlayer.y<200 && oPlayer.x<650)
  global.reachedEnd = true;
