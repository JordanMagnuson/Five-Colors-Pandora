image_speed = 0;
image_blend = color;
     
switch(oChest.color)
{
  case global.COLOR_PURPLE:
    if (global.destroyedRoom05)
      image_index = 1;
    else 
      image_index = 0;
    break;
  case global.COLOR_GREEN:
    if (global.destroyedRoom04)
      image_index = 1;
    else 
      image_index = 0;
    break;
  case global.COLOR_YELLOW:
    if (global.destroyedRoom03)
      image_index = 1;
    else 
      image_index = 0;
    break;
  case global.COLOR_PINK:
    if (global.destroyedRoom02)
      image_index = 1;
    else 
      image_index = 0;
    break;
  case global.COLOR_BLUE:
    if (global.destroyedRoom01)
      image_index = 1;
    else 
      image_index = 0;
    break;            
  default:
    break;
}
