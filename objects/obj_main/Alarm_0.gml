// --------------------------------------------------------------------
// Check Status effects & tests removal (outside of battle)

if (global.zone_active == 0) {
    if (global.deactivated == 0) {
		event_user(0);

/*
        if ((status[0] == true) && (obj_main.hp < obj_main.hp_max)) obj_main.hp += 5 * (obj_main.int/2);
        if (status[1] == true)  obj_main.tp += 5 * (obj_main.int/2);
        if (status[5] == true) obj_main.hp -= 1 * (obj_main.int/2);
              
        for(ggg = 0;ggg <= 3;ggg+=1) {
            if (status[ggg] == true) {
                if (irandom_range(0,100) <= obj_main.int) status[ggg] = false;                     
            }
        }
        for(ggg = 4;ggg <= 7;ggg+=1) {
            if (status[ggg] == true) {
                if (irandom_range(0,100) <= obj_main.mdef) status[ggg] = false;                     
            }
        }
        obj_main.alarm[0] = 30;
		*/
    }
}

/*
//Player Death - Game over/restart
if (obj_main.hp < 1){
    with (obj_main) instance_destroy();
    global.room_going_to = rm_main;
    instance_create(0,0,obj_fader);        
    fight_over = 3;   
    global.zone_active = 4;
} 
*/