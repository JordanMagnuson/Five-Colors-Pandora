gravSign = sign(global.grav);

if (image_angle != 0)    
{
  if (image_angle > 10)
    image_angle -= 9;
  else if (image_angle < -10)
    image_angle += 9;
  else 
    image_angle = 0;
    
  if (!place_meeting(x, y + 1*gravSign, oSolid))
    y += 1*gravSign;
  if (place_meeting(x, y, oSolid))
    y -= 1*gravSign;        
}
