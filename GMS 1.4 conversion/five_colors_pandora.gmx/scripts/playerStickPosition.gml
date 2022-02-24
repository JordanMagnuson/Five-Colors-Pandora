gravSign = sign(global.grav)

hfrac += xVel;
vfrac += yVel;
hint = hfrac div 1;
vint = vfrac div 1;
hfrac -= hint;
vfrac -= vint;
h = sign(hint);
v = sign(vint);
onGround = place_meeting(x, y + 1*gravSign, oSolid);

repeat (abs(hint))
{
    //Stop if bump into solid
    if (place_meeting(x + h, y, oSolid))
    {
        xVel = 0;
        break;
    }
    //Stop if hit edge of screen
    else if (x + h <= 0 || x + h >= room_width)
    {
      xVel = 0;
      break;
    }    
    else
    {
      x += h;
    }
}

repeat (abs(vint))
{
    if (place_meeting(x, y + v, oSolid))
    {
        yVel = 0;
        if (v == 1*gravSign)
        {
          onGround= true;
        }
        break;
    }
    else
    {
        y += v;
    }
}
