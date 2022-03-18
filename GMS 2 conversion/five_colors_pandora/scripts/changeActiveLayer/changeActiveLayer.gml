function changeActiveLayer() {
	//Change player to active myLayer
	oPlayer.myLayer = global.activeLayer;

	//Change gravity
	switch (global.activeLayer)
	{
	  case global.FOREGROUND:
	    global.grav = global.FOREGROUND_GRAV;
	    break;
	  case global.MIDGROUND:
	    global.grav = global.MIDGROUND_GRAV;
	    break;  
	  default:
	    break;
	}

	//Change objects to correct myLayer
	for (i=0; i<instance_count; i+=1)
	{
	  iii = instance_id_get( i );
	  if (!instance_exists(iii))
	    break;
	  with(iii)
	  {
	    if variable_instance_exists(self, "myLayer")
	    {
	      if (myLayer == global.activeLayer)
	      {
	        image_alpha = 1;
	        depth = 0;   
	//        if (object_index != oChest)     
	//          image_blend = global.FOREGROUND_COLOR;
	      }
	      else
	      {
	        image_alpha = 0.5;
	        depth = 10;      
	//        if (object_index != oChest)     
	//          image_blend = global.MIDGROUND_COLOR;                    
	        depth = 11;             
	      }
	    }
	  } 
	}
}
