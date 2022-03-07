if (place_meeting(x,y,oPlayer) && global.activeLayer != myLayer)
{
  global.activeLayer = global.MIDGROUND;
  changeActiveLayer();
}
