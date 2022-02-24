if (place_meeting(x,y,oPlayer) && global.activeLayer != layer)
{
  global.activeLayer = global.MIDGROUND;
  changeActiveLayer();
}
