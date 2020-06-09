/// @description random direction change



if ((npc_type == 0) || (npc_type == 1)) {
	if (place_snapped(16,16)){
		if (alarm[0] <= 0){
		    if (edge == 0) {
		        temp = choose(0,1,2,3,4);
		    } else {
		        temp = edge;
		    }
			if (temp == 0){
			    image_speed = 0;
			    vspeed = 0;
			    hspeed = 0;
			} else if (temp == 1){
			    frame_first = 0;
			    frame_last = 1;
			    image_speed = 0.25;
			    image_index = frame_first;
			    vspeed = 0.5;
			    hspeed = 0;
			} else if (temp == 2){
			    frame_first = 2;
			    frame_last = 3;
			    image_speed = 0.25;
			    image_index = frame_first;
			    vspeed = 0;
			    hspeed = -0.5;
			} else if (temp == 3){
			    frame_first = 4;
			    frame_last = 5;
			    image_speed = 0.25;
			    image_index = frame_first;
			    vspeed = -0.5;
			    hspeed = 0;
			} else if (temp == 4){
			    frame_first = 6;
			    frame_last = 7;
			    image_speed = 0.25;
			    image_index = frame_first;
			    vspeed = 0;
			    hspeed = 0.5;
			}
			alarm[0] = 50;
			edge = 0;    
		}
	}
}
if (image_index > frame_last) image_index = frame_first;


