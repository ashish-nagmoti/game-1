if place_meeting(x,y,oPlayer) && !instance_exists(oWarp)
  {
	var inst =instance_create_depth(0,0,-9999,oWarp);
	inst.target_x=target_x;
	inst.target_y=target_y;
	inst.target_rm=target_rm;
	inst.target_face=target_face;
	  
  }
