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
	        switch (object_index)
	        {
	          //Must do this to change parent, becuase object_set_parent requirest object index, not instance id
	          //and so cannot be performed with an instance that already exists in a room.
	          case oRoom01Foreground:
	          case oRoom01Midground:
	          case oRoom01ForegroundD:
	          case oRoom01MidgroundD:   
                   
	          case oRoom02Foreground:
	          case oRoom02Midground:
	          case oRoom02ForegroundD:
	          case oRoom02MidgroundD:   
                 
	          case oRoom03Foreground:
	          case oRoom03Midground:   
	          case oRoom03Foreground2:
	          case oRoom03Midground2:
	          case oRoom03ForegroundD:
	          case oRoom03MidgroundD:  
	          case oRoom03ForegroundD2:
	          case oRoom03MidgroundD2:  
                    
	          case oRoom04Foreground:
	          case oRoom04Midground:   
	          case oRoom04Foreground2:
	          case oRoom04Midground2:             
	          case oRoom04ForegroundD:
	          case oRoom04MidgroundD:  
	          case oRoom04ForegroundD2:
	          case oRoom04MidgroundD2:   
                      
	          case oRoom05Foreground:
	          case oRoom05Midground:    
	          case oRoom05ForegroundD:
	          case oRoom05MidgroundD:   
          
	          case oRoom06Foreground:
	          case oRoom06Foreground2:
	          case oRoom06Foreground3:
	          case oRoom06Midground:                                                             
	            //object_set_parent(object_index,oSolid); UNSURE OF WHAT THIS LINE IS TRYING TO DO
	            instance_change(object_index,true); //instance change did not seem to work in terrorist killer   
	            break;  
	          default:
	            break;
	        } 
	      }
	      else
	      {
	        image_alpha = 0.5;
	        depth = 10;      
	//        if (object_index != oChest)     
	//          image_blend = global.MIDGROUND_COLOR; 
	        switch (object_index)
	        {
	          //Must do this to change parent, becuase object_set_parent requirest object index, not instance id
	          //and so cannot be performed with an instance that already exists in a room.
	          case oRoom01Foreground:
	          case oRoom01Midground:
	          case oRoom01ForegroundD:
	          case oRoom01MidgroundD:   
                   
	          case oRoom02Foreground:
	          case oRoom02Midground:
	          case oRoom02ForegroundD:
	          case oRoom02MidgroundD:   
                 
	          case oRoom03Foreground:
	          case oRoom03Midground:   
	          case oRoom03Foreground2:
	          case oRoom03Midground2:
	          case oRoom03ForegroundD:
	          case oRoom03MidgroundD:  
	          case oRoom03ForegroundD2:
	          case oRoom03MidgroundD2:  
                    
	          case oRoom04Foreground:
	          case oRoom04Midground:   
	          case oRoom04Foreground2:
	          case oRoom04Midground2:             
	          case oRoom04ForegroundD:
	          case oRoom04MidgroundD:  
	          case oRoom04ForegroundD2:
	          case oRoom04MidgroundD2:   
                      
	          case oRoom05Foreground:
	          case oRoom05Midground:    
	          case oRoom05ForegroundD:
	          case oRoom05MidgroundD:   
          
	          case oRoom06Foreground:
	          case oRoom06Foreground2:
	          case oRoom06Foreground3:
	          case oRoom06Midground:                      
	            depth = 11;             
	            //object_set_parent(object_index,oSolidNot); SAME AS ABOVE
	            instance_change(object_index,true);   
	            break;  
	          default:
	            break;
	        }        
	      }
	    }
	  } 
	}



}
