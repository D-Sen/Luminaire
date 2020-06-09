
obj_main.battle_steps = 0;
obj_main.battle_flag = 10;


obj_main.target_x = obj_main.x;
obj_main.target_y = obj_main.y;
obj_main.moving = false;
obj_main.image_speed = 0;
obj_main.sprite_index = spr_main_down;
obj_main.alarm[1] = 10;

//---------------------------------------------------------------
// Travel Direction : Martello to interior Rooms


if (room == rm_town_Martello) {
    //global.main_lastx = obj_main.x;
    //global.main_lasty = obj_main.y;
    //global.last_room = rm_town_Martello;


    if ((x == 144) && (y == 176)){
        room_goto(rm_int_shop_MAR);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
        exit;
    }
    if ((x == 320) && (y == 176)){
        room_goto(rm_int_house_MAR);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
        exit;
    }
}


//---------------------------------------------------------------
// Travel Direction : Ayver to interior Rooms


if (room == rm_town_Ayver) {
  

    if ((x == 272) && (y == 176)){
        room_goto(rm_int_shop_AYV);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 624) && (y == 208)){
        room_goto(rm_int_house_AYV);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 576) && (y == 656)){
        room_goto(rm_int_house2_AYV);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
}

//---------------------------------------------------------------
// Travel Direction : Dogeville to interior Rooms


if (room == rm_town_Dogeville) {


    if ((x == 176) && (y == 112)){
        room_goto(rm_int_shop_DOG);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 112) && (y == 368)){
        room_goto(rm_int_house_DOG);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
}

//---------------------------------------------------------------
// Travel Direction : Dogeville to interior Rooms


if (room == rm_town_CornBridge) {


    if ((x == 112) && (y == 80)){
        room_goto(rm_int_hovel);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
}

//---------------------------------------------------------------
// Travel Direction : Greatpass to interior Rooms


if (room == rm_town_Greatpass) {

    if ((x == 256) && (y == 208)){
        room_goto(rm_int_shop_GRE);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 624) && (y == 208)){
        room_goto(rm_int_house_GRE);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 464) && (y == 560)){
        room_goto(rm_int_house2_GRE);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 144) && (y == 688)){
        room_goto(rm_int_house3_GRE);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
}



//---------------------------------------------------------------
// Travel Direction : Zeal to interior Rooms


if (room == rm_town_Zeal) {
    

    if ((x == 160) && (y == 432)){
        room_goto(rm_int_shop_ZEA);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 464) && (y == 624)){
        room_goto(rm_int_house_ZEA);
        obj_main.x = 136;
        obj_main.y = 216;
        //128/208
    }
    if ((x == 304) && (y == 80)){
        obj_control.room_fight = rm_fight5;
        room_goto(rm_final_base);
        obj_main.x = 664;
        obj_main.y = 392;
        //656/384
    }
    
    if ((x == 320) && (y == 80)){
        obj_control.room_fight = rm_fight5;
        room_goto(rm_final_base);
        obj_main.x = 664;
        obj_main.y = 392;
        //656/384
    }
}


//---------------------------------------------------------------
// Travel Direction : RedMountain to Overworld

if (room == rm_cave_RedMountain) {
    obj_control.room_fight = rm_fight4;   

    if ((x == 1024) && (y == 208)){
        with (obj_main) {
            easyx = 488;
            easyy = 1720;
            //480/1712
            using_easyxy = true;
        }

        global.room_going_to = rm_overworld;
        instance_create(x,y,obj_fader);  
        global.region_current = 1;
        exit;
    } else if  ((x == 64) && (y == 320)){
       room_goto(rm_DEBUG);
        obj_main.x = 128;
        obj_main.y = 208;
    }
 
}


//---------------------------------------------------------------
// Travel Direction : Orania Pass to Overworld

if (room == rm_cave_OraniaPass) {
    obj_control.room_fight = rm_fight4;    

    if ((x == 96) && (y == 80)){
        with (obj_main) {
            easyx = 440;
            easyy = 1416;
            using_easyxy = true;
            //432/1408
        }

        global.room_going_to = rm_overworld;
        instance_create(x,y,obj_fader);  
        global.region_current = 1;
        exit;
    }
    if ((x == 1120) && (y == 112)){
            with (obj_main) {
            easyx = 456;
            easyy = 1288;
            using_easyxy = true;
            //448/1280
        }

        global.room_going_to = rm_overworld;
        instance_create(x,y,obj_fader);  
        global.region_current = 2;
        exit;
    }

}

//---------------------------------------------------------------
// Travel Direction : GreatNorthCave to Overworld

if (room == rm_cave_GreatNorthCave) {
    obj_control.room_fight = rm_fight4;    
    global.region_current = 2;


    if ((x == 464) && (y == 928)){
            with (obj_main) {
            easyx = 488;
            easyy = 552;
            using_easyxy = true;
            //480/544
        }
        global.room_going_to = rm_overworld;
        instance_create(x,y,obj_fader);  
    }

}

//---------------------------------------------------------------
// Travel Direction : Perique Pass to Overworld

if (room == rm_cave_PeriquePass) {
    obj_control.room_fight = rm_fight4;
    global.room_going_to = rm_overworld;
    instance_create(x,y,obj_fader);  

    if ((x == 0) && (y == 80)){
            with (obj_main) {
            easyx = 1528;
            easyy = 1000;
            using_easyxy = true;
            //1520/992
        }
        global.region_current = 4;

    }
    if ((x == 320) && (y == 1152)){
        with (obj_main) {
            easyx = 1512;
            easyy = 1064;
            using_easyxy = true;
            //1504/1056
        }
        global.region_current = 5;
    }
    

}

//---------------------------------------------------------------
// Travel Direction : Cornbridge to interior
/*
if (room == rm_town_CornBridge) {
    
    if ((x == 640) && (y == 80)){
        with (obj_main) {
            easyx = 128;
            easyy = 192;
            using_easyxy = true;
        }
        global.room_going_to = rm_overworld;
        instance_create(x,y,obj_fader);  

        //room_goto(rm_int_hovel);
        //obj_main.x = 128;
        //obj_main.y = 192;
    }

}
*/

//---------------------------------------------------------------
// Travel Direction : Interior rooms back into main town

// Martello
if (room == rm_int_shop_MAR) {
    room_goto(rm_town_Martello);
        obj_main.x = 152;
        obj_main.y = 200;
        //144/192
        exit;
}
if (room == rm_int_house_MAR) {
    room_goto(rm_town_Martello);
        obj_main.x = 328;
        obj_main.y = 200;
        //320/192
        exit;
}


// Ayver
if (room == rm_int_shop_AYV) {
    room_goto(rm_town_Ayver);
        obj_main.x = 280;
        obj_main.y = 200;
        //272/192
        exit;
}
if (room == rm_int_house_AYV) {
    room_goto(rm_town_Ayver);
        obj_main.x = 632;
        obj_main.y = 232;
        //624/224
        exit;
}

if (room == rm_int_house2_AYV) {
    room_goto(rm_town_Ayver);
        obj_main.x = 584;
        obj_main.y = 680;
        //576/672
        exit;
}


// Dogeville
if (room == rm_int_shop_DOG) {
    room_goto(rm_town_Dogeville);
        obj_main.x = 184;
        obj_main.y = 136;
        //176/128
        exit;
}
if (room == rm_int_house_DOG) {
    room_goto(rm_town_Dogeville);
        obj_main.x = 120;
        obj_main.y = 392;
        //112/384
        exit;
}



// Cornbridge
if (room == rm_int_hovel) {
    room_goto(rm_town_CornBridge);
        obj_main.x = 120;
        obj_main.y = 104;
        //112/96
        exit;
}


// GreatPass
if (room == rm_int_shop_GRE) {
    room_goto(rm_town_Greatpass);
        obj_main.x = 264;
        obj_main.y = 232;
        //256/224
        exit;
}
if (room == rm_int_house_GRE) {
    room_goto(rm_town_Greatpass);
        obj_main.x = 632;
        obj_main.y = 232;
        //624/224
        exit;
}

if (room == rm_int_house2_GRE) {
    room_goto(rm_town_Greatpass);
        obj_main.x = 472;
        obj_main.y = 584;
        //464/576
        exit;
}

if (room == rm_int_house3_GRE) {
    room_goto(rm_town_Greatpass);
        obj_main.x = 152;
        obj_main.y = 712;
        //144/704
        exit;
}


// Zeal
if (room == rm_int_shop_ZEA) {
    room_goto(rm_town_Zeal);
        obj_main.x = 168;
        obj_main.y = 456;
        //160/448
        exit;
}
if (room == rm_int_house_ZEA) {
    room_goto(rm_town_Zeal);
        obj_main.x = 472;
        obj_main.y = 648;
        //464/640
        exit;
}

if (room == rm_final_base) {
    room_goto(rm_town_Zeal);
        obj_main.x = 312;
        obj_main.y = 120;
        //304/112
        exit;
}

    

/* */
/*  */
