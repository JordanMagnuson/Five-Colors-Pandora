function playerStickPosition() {
	gravSign = sign(global.grav)

	hfrac += xVel;
	vfrac += yVel;
	hint = hfrac div 1;
	vint = vfrac div 1;
	hfrac -= hint;
	vfrac -= vint;
	h = sign(hint);
	v = sign(vint);
	if(global.activeLayer == 1)
		onGround = place_meeting(x, y + 1*gravSign, oForeground);
	else
		onGround = place_meeting(x, y + 1*gravSign, oMidground);
	
	if(global.activeLayer == 1){
		repeat (abs(hint))
		{
		    //Stop if bump into solid
		    if (place_meeting(x + h, y, oForeground))
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
		    if (place_meeting(x, y + v, oForeground))
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
	}
	else{	
		repeat (abs(hint))
		{
		    //Stop if bump into solid
		    if (place_meeting(x + h, y, oMidground))
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
		    if (place_meeting(x, y + v, oMidground))
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
	}


}
