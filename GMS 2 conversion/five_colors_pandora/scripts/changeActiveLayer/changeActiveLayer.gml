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
		  show_debug_message("global.activelayer: " + string(global.activeLayer))
	    if variable_instance_exists(self, "myLayer")
	    {
		  show_debug_message("myLayer: " + string(myLayer))
	      if (myLayer == global.activeLayer)
	      {
	        image_alpha = 1;
	        depth = 0;   
	//        if (object_index != oChest)     
	//          image_blend = global.FOREGROUND_COLOR;
			global.FOREGROUND_ACTIVE = true;
			show_debug_message("Foreground active")
	      }
	      else
	      {
	        image_alpha = 0.5;
	        depth = 10;      
	//        if (object_index != oChest)     
	//          image_blend = global.MIDGROUND_COLOR;                    
	        depth = 11;             

			global.FOREGROUND_ACTIVE = false;
			show_debug_message("Midground active")
	      }
	    }
	  } 
	}
}
