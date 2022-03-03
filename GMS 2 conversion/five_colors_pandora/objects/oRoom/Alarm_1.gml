alarm_set(5, 1);

  with(oChest)
  {
    if (place_meeting(x,y,oPlayer) && layer == oPlayer.layer)
    { 
      switch(oChest.color)
      {
        case global.COLOR_PURPLE:
          if (global.destroyedRoom05)
            break;
          global.destroyedRoom05 = true;
          global.justDestroyed = true;
          room_goto(room05D);
          break;
        case global.COLOR_GREEN:
          if (global.destroyedRoom04)
            break;
          global.destroyedRoom04 = true;
          global.justDestroyed = true;
          room_goto(room04D);
          break;
        case global.COLOR_YELLOW:
          if (global.destroyedRoom03)
            break;
          global.destroyedRoom03 = true;
          global.justDestroyed = true;
          room_goto(room03D);
          break;
        case global.COLOR_PINK:
          if (global.destroyedRoom02)
            break;
          global.destroyedRoom02 = true;
          global.justDestroyed = true;
          room_goto(room02D);
          break;
        case global.COLOR_BLUE:
          if (global.destroyedRoom01)
            break;
          global.destroyedRoom01 = true;
          global.justDestroyed = true;
          room_goto(room01D);
          break;
        default:
          break;
      }
    }  
  }

