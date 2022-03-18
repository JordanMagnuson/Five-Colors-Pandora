function playerStickRotation() {
	gravSign = sign(global.grav);

	if (image_angle != 0)    
	{
		if (image_angle > 10)
		    image_angle -= 9;
		else if (image_angle < -10)
		    image_angle += 9;
		else 
		    image_angle = 0;
	    if(global.activeLayer == 1){
			if (!place_meeting(x, y + 1*gravSign, oForeground))
			    y += 1*gravSign;
			if (place_meeting(x, y, oForeground))
			    y -= 1*gravSign;        
	
		}
		else{
			if (!place_meeting(x, y + 1*gravSign, oMidground))
			    y += 1*gravSign;
			if (place_meeting(x, y, oMidground))
			    y -= 1*gravSign;        
			}
	}


}
