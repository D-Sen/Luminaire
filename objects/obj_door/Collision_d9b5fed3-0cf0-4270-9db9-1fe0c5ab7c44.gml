
obj_main.battle_steps = 0;
obj_main.battle_flag = 10;

obj_main.target_x = obj_main.x;
obj_main.target_y = obj_main.y;
obj_main.moving = false;
obj_main.image_speed = 0;
obj_main.sprite_index = spr_main_down;
obj_main.alarm[1] = 10;

//---------------------------------------------------------------
// Travel Direction : Overworld to Room


if (room == rm_overworld) {
    
    if ((x == 480) && (y == 1680)){
        global.room_going_to = rm_cave_RedMountain; 
        obj_control.room_fight = rm_fight1;
        
        with (obj_main) {
            easyx = 1016;
            easyy = 216;
            using_easyxy = true;
            //1008/208
        }
    } else if ((x == 432) && (y == 1392)){
        global.room_going_to = rm_cave_OraniaPass; 
        obj_control.room_fight = rm_fight3;
        with (obj_main) {
            easyx = 104;
            easyy = 104;
            using_easyxy = true;
            //96/96
        }
        
    } else if ((x == 448) && (y == 1264)){
        global.room_going_to = rm_cave_OraniaPass; 
        obj_control.room_fight = rm_fight3;
        with (obj_main) {
            easyx = 1128;
            easyy = 136;
            using_easyxy = true;
            //1120/128
        }
        
    }else if ((x == 480) && (y == 528)){
        global.room_going_to = rm_cave_GreatNorthCave; 
        obj_control.room_fight = rm_fight1;
        
        with (obj_main) {
            easyx = 472;
            easyy = 920;
            using_easyxy = true;
            //464/912
        }
    }else if ((x == 1520) && (y == 976)){
        global.room_going_to = rm_cave_PeriquePass; 
        obj_control.room_fight = rm_fight3;
        with (obj_main) {
            easyx = 24;
            easyy = 88;
            using_easyxy = true;
            //16/80
        }
    }else if ((x == 1504) && (y == 1040)){
        global.room_going_to = rm_cave_PeriquePass; 
        obj_control.room_fight = rm_fight3;
        
        with (obj_main) {
            easyx = 328;
            easyy = 1144;
            using_easyxy = true;
            //320/1136
        }
        
    }else if ((x == 1408) && (y == 1728)){
        global.room_going_to = rm_factory1; 
        obj_control.room_fight = rm_fight2;
        with (obj_main) {
            easyx = 312; 
            easyy = 968;
            using_easyxy = true;
            //304/960
        }
        
    }else if ((x == 1696) && (y == 1600)){
        global.room_going_to = rm_factory2; 
        obj_control.room_fight = rm_fight2;
        with (obj_main) {
            easyx = 312;
            easyy = 968;
            using_easyxy = true;
                //304/960
        }
    }else if ((x == 1248) && (y == 800)){
        global.room_going_to = rm_factory3; 
        obj_control.room_fight = rm_fight2;
        with (obj_main) {
            easyx = 312;
            easyy = 968;
            using_easyxy = true;
            //304/960
        }
    }

    //--------------------------------------------
    // Towns
    
    if ((x == 768) && (y == 1648)){
        global.room_going_to = rm_town_Martello; 
        with (obj_main) {
            easyx = 344;
            easyy = 440;
            using_easyxy = true;
            //336/432
        }        
        global.zone_fight = 0; 
    } else if ((x == 224) && (y == 544)){
        global.room_going_to = rm_town_Dogeville; 
        with (obj_main) {
            easyx = 264;
            easyy = 440;
            using_easyxy = true;
            //256/432
        }
        global.zone_fight = 0; 
    }else if ((x == 944) && (y == 992)){
        global.room_going_to = rm_town_Ayver; 
        with (obj_main) {
            easyx = 56;
            easyy = 312;
            using_easyxy = true;
            //48/304
        }
        global.zone_fight = 0; 
    }else if ((x == 1552) && (y == 576)){
        global.room_going_to = rm_town_CornBridge; 
        global.zone_fight = 0; 

        with (obj_main) {
            easyx = 120;
            easyy = 216;
            using_easyxy = true;
            //112/208
        }
    }else if ((x == 1568) && (y == 1248)){
        global.room_going_to = rm_town_Greatpass; 
        global.zone_fight = 0; 

        with (obj_main) {
            easyx = 56;
            easyy = 312;
            using_easyxy = true;
            //48/304
        }
    }else if ((x == 1568) && (y == 1664)){
        global.room_going_to = rm_town_Zeal; 
        global.zone_fight = 0; 
        with (obj_main) {
            easyx = 312;
            easyy = 984;
            using_easyxy = true;
            //304/976
        }
    }
    instance_create(x,y,obj_fader);  
    
    
}


