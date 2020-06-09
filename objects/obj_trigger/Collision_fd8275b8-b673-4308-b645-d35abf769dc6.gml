//Moves player to story rooms


obj_main.target_x = obj_main.x;
obj_main.target_y = obj_main.y;
obj_main.moving = false;
obj_main.image_speed = 0;

if (room == rm_cave_RedMountain) {
    if (global.story_flag == 2) {
        if ((x == 944) && (y == 208)) {
		    global.room_going_to = rm_final_base;    
            obj_main.visible = false;
            //global.main_lastx = obj_main.x;
            //global.main_lasty = obj_main.y;
			global.main_lastx = 952; //952/216
            global.main_lasty = 216;
            global.last_room = room;
            global.zone_active = 7;
    
            //Used to make camera stick to right x/y, because still following player
            obj_main.x = 656;
            obj_main.y = 192;
            obj_main.target_x = obj_main.x;
            obj_main.target_y = obj_main.y;
            
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 60;
                    kind = transition.stripe_ver;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }              

        }
    }
} else if (room == rm_overworld) {

    if (global.story_flag <= 3) {
        if ((x == 496) && (y == 1280)) {
            global.room_going_to = rm_final_base;    
            obj_main.visible = false;
            //global.main_lastx = obj_main.x;
            //global.main_lasty = obj_main.y;
			global.main_lastx = 504;
            global.main_lasty = 1288;

            global.last_room = room;
            global.zone_active = 7;
            obj_main.x = 656;
            obj_main.y = 192;
			obj_main.target_x = obj_main.x;
            obj_main.target_y = obj_main.y;
          
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 60;
                    kind = transition.stripe_ver;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }                      
        }
    }
    if (global.story_flag <= 4) {
        if ((x == 960) && (y == 608)) {
        
            global.room_going_to = rm_final_base;    
            global.last_room = room;
            obj_main.visible = false;
            //global.main_lastx = obj_main.x;
            //global.main_lasty = obj_main.y;
			global.main_lastx = 968;
            global.main_lasty = 616;
            global.zone_active = 7;
            obj_main.x = 656;
            obj_main.y = 192;
			obj_main.target_x = obj_main.x;
            obj_main.target_y = obj_main.y;
          
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 60;
                    kind = transition.stripe_ver;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }                          
        }
    }
    if (global.story_flag <= 5) {
        if ((x == 1504) && (y == 1072)) {
            global.room_going_to = rm_final_base;    
            global.last_room = room;

            obj_main.visible = false;
            //global.main_lastx = obj_main.x;
            //global.main_lasty = obj_main.y;
			global.main_lastx = 1512;
            global.main_lasty = 1080;
            global.zone_active = 7;
            obj_main.x = 656;
            obj_main.y = 192;
			obj_main.target_x = obj_main.x;
            obj_main.target_y = obj_main.y;
          
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 60;
                    kind = transition.stripe_ver;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }                                 
        }
    }
} else if (room == rm_town_Zeal) {
    if (global.story_flag <= 6) {
        if ((x == 304) && (y == 784)) {
            global.room_going_to = rm_final_base;    
            global.last_room = room;
            obj_main.visible = false;
            //global.main_lastx = obj_main.x;
            //global.main_lasty = obj_main.y;
			global.main_lastx = 312;
            global.main_lasty = 792;
            global.zone_active = 7;
            obj_main.x = 656;
            obj_main.y = 192;
			obj_main.target_x = obj_main.x;
            obj_main.target_y = obj_main.y;
          
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 60;
                    kind = transition.stripe_ver;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }                                      
        }
    }
} else if (room == rm_final_base) {
    if (global.story_flag <= 7) {
        if ((x == 656) && (y == 240)) {
            global.zone_active = 7;            
        }
    }
}

