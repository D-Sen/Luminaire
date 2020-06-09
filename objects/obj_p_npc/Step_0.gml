/// @description collision with edge, wall

if (acting == 1) {
	hspeed = 0;
	vspeed = 0;
	image_speed = 0; 
} else {


if ((npc_type == 0) || (npc_type == 1)) {
	
	if (x <= 32 ) { alarm[0] = 0; edge = 4;
	} else if (x >= room_width-32 ) { alarm[0] = 0; edge = 2; 
	} else if (y <= 32 ) { alarm[0] = 0; edge = 1;
	} else if (y >= room_height-32 ) { alarm[0] = 0; edge = 3;
	}

	if ((tilemap_get_at_pixel(tilemap,bbox_right+16,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right+16,bbox_bottom) != 0)){
		//right run-in-to
		alarm[0] = 0; 
		edge = 2;
	} else if ((tilemap_get_at_pixel(tilemap,bbox_left-16,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_left-16,bbox_bottom) != 0)){
		//left run-in-to
		alarm[0] = 0; 
		edge = 4;
	} else if ((tilemap_get_at_pixel(tilemap,bbox_left,bbox_top-16) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_top-16) != 0)){
		//up runinto
		alarm[0] = 0; 
		edge = 1;
	} else if ((tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom+16) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+16) != 0)){
		//down runinto
		alarm[0] = 0; 
		edge = 3;
	}
}

}