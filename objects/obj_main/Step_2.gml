
if ((global.zone_active == 0) && (global.zone_fight == 1)) {
    if ((global.deactivated == 0) && (obj_main.equipped[4] != 122)){
    
        if (battle_steps_traveled >= 32) { //64
            battle_steps_traveled = 0;
            battle_steps +=1;
        }
        
		//Check to start battle & start battle
        if (battle_steps >= battle_flag) {
            can_act = 0;    
            battle_steps = 0;
            battle_flag = 0;
                
            obj_control.alarm[0] = 0;    
            global.main_lastx = x;
            global.main_lasty = y;
			visible = false;
            global.zone_active = 2;
            global.last_room = room;
            global.room_going_to = obj_control.room_fight;
            audio_play_sound(snd_battle, 5, false);
            
            if (!instance_exists(obj_transition)) {
                with (instance_create(__view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, obj_transition)) {
                    time = 40;
                }
            }    
            if (xx != -1) { obj_transition.xx = xx; }
            if (yy != -1) { obj_transition.yy = yy; }
                
        } 
    }
}

// Check for leaving towns (or int room to town). Travel from towns to overworld
if ((x <= 16 ) || (x >= room_width-16 ) || (y <= 16 ) || (y >= room_height-16 )) {
	switch (room) {
	    case (rm_town_Martello):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 760;
	    obj_main.y = 1672;
	    //752/1664
	    break;
    
	    }
	    case (rm_town_Ayver):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 936;
	    obj_main.y = 1016;
	    //928/1008
	    break;    
    
	    }
	    case (rm_town_Dogeville):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 264;
	    obj_main.y = 568;
	    //256/560
	    break;
    
	    }
	    case (rm_town_CornBridge):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 1560;
	    obj_main.y = 600;
	    //1552/592
	    break;
    
	    }
	    case (rm_town_Greatpass):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 1560;
	    obj_main.y = 1272;
	    //1552/1264
	    break;    
    
	    }

	    case (rm_town_Zeal):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);

	    obj_main.x = 1576;
	    obj_main.y = 1704;
	    //1568//1696
	    break;        
	    }
	    //-----------------------------------
	    // factories
    
	    case (rm_factory1):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);
	    obj_main.x = 1448;
	    obj_main.y = 1736;
	    //1440/1728
	    break;        
	    }
    
	    case (rm_factory2):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);
	    obj_main.x = 1704;
	    obj_main.y = 1624;
	    //1696/1616
	    break;        
	    }
    
	    case (rm_factory3):{
	    global.zone_fight = 1;
	    obj_control.room_fight = rm_fight4;
	    room_goto(rm_overworld);
	    obj_main.x = 1256;
	    obj_main.y = 824;
	    //1248/816
	    break;        
	    }
    
	}
}