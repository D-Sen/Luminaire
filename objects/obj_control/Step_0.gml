var AAA = (keyboard_check_released(ord("Z")) or gamepad_button_check_released(global.playcontrol_one, gp_face2) ); 
var BBB = (keyboard_check_released(ord("X")) or gamepad_button_check_released(global.playcontrol_one, gp_face1) );
var SELECT = (keyboard_check_released(ord("C")) or gamepad_button_check_released(global.playcontrol_one, gp_select) );
var START = (keyboard_check_released(vk_enter) or gamepad_button_check_released(global.playcontrol_one, gp_start));


var UP = (gamepad_axis_value(global.playcontrol_one, gp_axislv) < 0);
var DOWN = (gamepad_axis_value(global.playcontrol_one, gp_axislv) > 0);
//---------------------------------------------------------------------------
// CHEATS

/*
// Add stats
if (keyboard_check_released(vk_f2)) {
    for(xx = 0;xx <= 7;xx+=1) {
        obj_main.status[xx] = true;
    }
}


// Add virus
if (keyboard_check_released(vk_f6)) {
        obj_main.status[5] = true;
}

// stop fights
if (keyboard_check_released(vk_f10)) {
   
        global.zone_fight = 0;

}
*/
/*
// Fill tactics
if (keyboard_check_released(vk_f3)) {
    for(iii=2;iii<15;iii+=1){
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = iii;
    }
}

// Kill Bosses
if (keyboard_check_released(vk_f4)) {
	audio_play_sound(snd_talk, 9, false);
    for(kk = 0;kk <= 7;kk+=1) {
        boss_dead[kk] = 1;
    }
}

//show ending
if (keyboard_check_released(vk_f5)) {
    global.zone_active = 10;
    
}
*/
//---------------------------------------------------------------------------
//Start Game normally

if (global.zone_active == 4){

    // Restart Game > (to start screen) if game is over        
    if (START == true) {
        game_restart();
        io_clear();
    }
} else if ((global.zone_active == 6) && (global.story_flag <= 1)){
    if (AAA == true) {    
        if (global.story_advancer < 2) {
            if (story_text[global.story_flag,(global.story_advancer)] != "NULL") {
                global.story_advancer += 1;
            }
        } else {
            global.story_advancer = 0;
            global.story_flag += 1;
            global.zone_active = 0;
            room = rm_cave_RedMountain;
        }
        io_clear();
    }
}


//---------------------------------------
// START SCREEN

if (global.zone_active == 3) {

    if (alarm[1] >= 0) exit;

    if (UP == true) {
        //Main Menu
        if (global.selector_active == 1){
            if (selector[1,1] > 0) {
                selector[1,1] -=1;
                obj_cursor.y -= 10;//32;
                io_clear();
				alarm[1] = 5;
            }
        }
    } 
    if (DOWN == true) {
        //Main Menu
        if (global.selector_active == 1){
            if (selector[1,1] < 3) {
                selector[1,1] +=1;
                obj_cursor.y += 10;//32;
                 io_clear();
                alarm[1] = 5;
            }
        }
    } 
    if (START == true) {
        if (global.zone_active == 3) {
            //Start Game normally
            if (selector[1,1] == 0) {
				audio_stop_sound(msc_title);
                global.zone_active = 6;
                global.story_flag = 1;   
                global.selector_active = 0;
                with (obj_cursor) instance_destroy();
                io_clear();
                alarm[1] = 5;                    
            } 
			
			//Load saved Game    
            if (selector[1,1] == 1){ 
				audio_stop_sound(msc_title);
                game_load("Luminaire-Save.dat");
                global.selector_active = 0;        
                with (obj_cursor) instance_destroy();
               io_clear();
                alarm[1] = 5;
                
            //Show manual
            }
            if (selector[1,1] == 2){
                global.zone_active = 8;
                global.selector_active = 0;
                with (obj_cursor) instance_destroy();
                io_clear();
 
                alarm[1] = 5;
 
                exit;
            //Show Credits    
            }
            if (selector[1,1] == 3){
                global.zone_active = 9;
                global.selector_active = 0;
                with (obj_cursor) instance_destroy();
                io_clear();
                alarm[1] = 5;
                exit;
            }
        }
    }
    
}
        if ((global.zone_active == 8) || (global.zone_active == 9)) {
        if (START == true) {
            
            //In manual or credits, return to main
            global.zone_active = 3;
            instance_create((room_width/2)-60,(room_height/2)-4,obj_cursor);
            global.selector_active = 1;
            selector[1,0] = 0;
            selector[1,1] = 0;
            io_clear();
            alarm[1] = 5;
 
        }
        if ((AAA == true) && (global.zone_active == 8)) {
            if (page_manual == 0) {
                page_manual = 1;
            } else if (page_manual == 1) {
                page_manual = 0;
            }
            io_clear();
        } 
}

//---------------------------------------
// GAME OVER SCREEN
// Load Saved Game
if (global.zone_active == 4){

    if (START == true) {            
        game_load("Luminaire-Save.dat");
        io_clear();
    }
    if (SELECT == true) {            
        game_restart();
        io_clear();
    }
}


//---------------------------------------
// ENDING SCREEN
if (global.zone_active == 10) {
		if (AAA == true) {
			if (instance_exists(obj_cursor)) with (obj_cursor) instance_destroy();
            if (page_ending <= 3) page_ending += 1;
            io_clear();
        }
}