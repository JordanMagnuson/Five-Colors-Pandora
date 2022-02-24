gravSign = sign(global.grav);

if (!onGround && !place_meeting(x+facing,y,oSolid))
  {
  if (rand(5)==0)
    rotation = -rotation;
    
  if (rotation>0)
    angleVel += BALLOON_ANGLE_ACC;
  else
    angleVel -= BALLOON_ANGLE_ACC;    
    
  if (angleVel > BALLOON_ANGLE_VEL_MAX)
    angleVel = BALLOON_ANGLE_VEL_MAX;
  
  image_angle += angleVel;
   
  // 2 mirror axes, so this works
  if (image_angle > 90)
    image_angle -= 90;
  else if (image_angle < -90)
    image_angle += 90;    
}
else
{
  if (image_angle > 5 && image_angle != 0)
    image_angle -= 4;
  else if (image_angle < -5 && image_angle != 0)
    image_angle += 4;
  else 
    image_angle = 0;
    
  if (onGround) {
    if (!place_meeting(x, y + 1*gravSign, oSolid))
      y += 1*gravSign;
    if (collision_point(x, y - 14*gravSign, oSolid, true, false))
      y -= 1*gravSign;    
  }
}
