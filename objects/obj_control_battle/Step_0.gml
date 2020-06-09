var AAA = (keyboard_check_released(ord("Z")) or gamepad_button_check_released(global.playcontrol_one, gp_face2) );
var BBB = (keyboard_check_released(ord("X")) or gamepad_button_check_released(global.playcontrol_one, gp_face1) );

var RIGHT =  (gamepad_axis_value(global.playcontrol_one, gp_axislh) > 0);
var LEFT =  (gamepad_axis_value(global.playcontrol_one, gp_axislh) < 0);
var UP = (gamepad_axis_value(global.playcontrol_one, gp_axislv) < 0);
var DOWN =  (gamepad_axis_value(global.playcontrol_one, gp_axislv) > 0);


if (alarm[8] >= 0) exit;
if (instance_exists(obj_main) == false) exit; 
//--------------------------------------------------------------------------------------
// Z Key


if (AAA == true) {


// If showing text, end text    
        if (alarm[11] > 0) {
            alarm[11] = 0
            event_user(2);
            io_clear();
            alarm[8] = 10;
            exit;               
        }

if ((global.zone_active == 2) && (obj_main.can_act == 1)){
    audio_play_sound(snd_select, 8, false);

    //------------------------------------------
    // Fight Over

    if (obj_control_battle.fight_over == 0) {

        //Selected a enemy from the group 
        //Moved to top to make tactic enemy single selections possible
        if ((global.selector_active == 1) && (selector[1,0] == 2)){
        if (obj_main.selections_tactic > 0){
                    b_parts[0] = 255;
                    b_parts[1] = 2;
                    b_parts[2] = selector[1,1];
                    b_parts[3] = 0;
                    
                    //scr_battle(255,obj_control_battle.caller,obj_main.selections_tactic,0);
                } else {
                    if (TEMP_armatk == 0) {
                        b_parts[0] = 255;
                        b_parts[1] = obj_control_battle.caller;
                        b_parts[2] = selector[1,1];
                        b_parts[3] = 0;
                        //battle_text[0] = string(character_main[0]) + " attacks with " + string(equip[obj_main.equipped[b_parts[3]],0]);                        
                        //scr_battle(255,obj_control_battle.caller,selector[1,1],0);                
                    } else if (TEMP_armatk == 1) {  
                        b_parts[0] = 255;
                        b_parts[1] = obj_control_battle.caller;
                        b_parts[2] = selector[1,1];
                        b_parts[3] = 1;
                        //battle_text[0] = string(character_main[0]) + " attacks with " + string(equip[obj_main.equipped[b_parts[3]],1]);
                        //scr_battle(255,obj_control_battle.caller,selector[1,1],1);                
                    } 
                }
                io_clear();
                global.selector_active = 0;
                selector[1,0] = 0;
                selector[1,1] = 0;    
                obj_control_battle.caller = 0;
                with (obj_cursor) instance_destroy();
                
                if (ambush_flag != 1) event_user(1);
                event_user(2);
                exit;
                 
            }    
        }    
		//------------------------------------
    // Main menu
        if ((global.selector_active == 1) && (selector[1,0] == 1)){
            TEMP_armatk = 255;
            // Fight
            if (obj_cursor.y == 180) { //168
                TEMP_armatk = 0;
            }
            if (obj_cursor.y == 200) { //178
                TEMP_armatk = 1;
            }    
            if ((selector[1,1] == 0) || (selector[1,1] == 1)) {            
                selector[1,0] = 2;
                selector[1,1] = 0; 
                obj_control_battle.caller = 1;
                obj_cursor.sprite_index = spr_cursor;
                //----------------------------------
                //Find "1st" enemy to place cursor
                
                for(iii=0;iii<3;iii+=1) {
                    if (instance_exists(enemy_slot[iii]) ) {
                        // Special width finding for Boss cursor placement only
                        temp_ensprwidth = sprite_get_width(enemy_slot[iii].sprite_index);
                        temp_ensprwidth = floor(temp_ensprwidth/2);
                        if (temp_ensprwidth <= 16) temp_ensprwidth = 16;
                        obj_cursor.x = (enemy_slot[iii].x - temp_ensprwidth);
                        //obj_cursor.x = (enemy_slot[iii].x - 16);
                        obj_cursor.y = enemy_slot[iii].y;
                        break;
                    } else {
                        selector[1,1] += 1;
                    }
                }

                io_clear();
                alarm[8] = 5;
                exit;       
        
        // Tactics
        } else if (selector[1,1] == 2){ 
            obj_control_battle.caller = 2;
			obj_cursor.sprite_index = spr_cursor;
            selector[1,0] = 4;
            selector[1,1] = 1;
            obj_cursor.x = 16;
            obj_cursor.y = 168;
            io_clear();
            alarm[8] = 5;
            exit;
    
        // Item
        } else if (selector[1,1] == 3){     
           obj_control_battle.caller = 3;
		   obj_cursor.sprite_index = spr_cursor;
            selector[1,0] = 3;
            selector[1,1] = 1;
            obj_cursor.x = 16;
            obj_cursor.y = 168;
            io_clear();
            alarm[8] = 5;
            exit;
        // Run
        } else if (selector[1,1] == 4){     
            selector[1,0] = 0;
                selector[1,1] = 0;
                global.selector_active = 0;
                with (obj_cursor) instance_destroy();
                
                b_parts[0] = 255;
                b_parts[1] = 4;
                b_parts[2] = 0;
                b_parts[3] = 0;
                //scr_battle(255,4,0,0);
                
                event_user(1);
                event_user(2);
                
                io_clear();
                alarm[8] = 5;
                exit;
        }
    }

    //------------------------------------------
    // Item Selected from list, Act with item

        if ((global.selector_active == 1) && (selector[1,0] == 3)){
           
              if (obj_main.inventory[selector[1,1],2] == 2) {
                obj_control_battle.alarm[2] = 30;
                obj_control_battle.mess_win_caller = "Can't use this in battle.";
                alarm[8] = 5;
                exit;
            } 
            //scr_battle(255,obj_control_battle.caller,selector[1,1],0);
            b_parts[0] = 255;
            b_parts[1] = obj_control_battle.caller;
            b_parts[2] = selector[1,1];
            b_parts[3] = 0;
            //battle_text[0] = character_main[0] + " used '" + string(item[obj_main.inventory[selector[1,1],0],1] + "'");
            
            //scr_item_transfer(3,b_parts[2],2,1);
            obj_control_battle.page = 0;
            obj_control_battle.ppp = 0;
            global.selector_active = 0;
            selector[1,0] = 0; 
            selector[1,1] = 0;        
            obj_control_battle.caller = 0;
            with (obj_cursor) instance_destroy();
            
            event_user(1);
            event_user(2);
            
            alarm[8] = 5;
            exit;
        }
    //------------------------------------------
    // Tactic selected from list

    if ((global.selector_active == 1) && (selector[1,0] == 4)){
       if (tactic[selector[1,1],2] > obj_main.tp) {
            obj_control_battle.alarm[2] = 30;
            obj_control_battle.mess_win_caller = "Not enough TP!";
            alarm[8] = 5;
            exit;
        } 
        obj_main.selections_tactic = selector[1,1]; 
        obj_control_battle.page = 0;
        obj_control_battle.ppp = 0;
           
        if (tactic[selector[1,1],11] == "tar_sin"){        
            //get selector ready
            selector[1,0] = 2;
            selector[1,1] = 0;             
        
            //find 1st enemy to place selector on
            for(iii=0;iii<3;iii+=1) {
                if (instance_exists(enemy_slot[iii])) {
                       // Special width finding for Boss cursor placement only
                    temp_ensprwidth = sprite_get_width(enemy_slot[iii].sprite_index);
                    temp_ensprwidth = floor(temp_ensprwidth/2);
                    if (temp_ensprwidth <= 16) temp_ensprwidth = 16;
                    obj_cursor.x = (enemy_slot[iii].x - temp_ensprwidth);
         
                    //obj_cursor.x = enemy_slot[iii].x-16;
                    obj_cursor.y = enemy_slot[iii].y;
                    io_clear();
                    alarm[8] = 5;
                    break;
                } else {
                    selector[1,1] += 1;
                }
            }
            alarm[8] = 5;
            exit;
        
        //tar_all, tar_self,tar_rand
        } else {
            //scr_battle(255,2,selector[1,1],0); 
            b_parts[0] = 255;
            b_parts[1] = 2;
            b_parts[2] = selector[1,1]; //255
            b_parts[3] = 0;
            battle_text[0] = obj_main.name + " used '" + tactic[obj_main.tactic_slot[selector[1,1]],1];
            
            global.selector_active = 0;  
            selector[1,0] = 0;
            selector[1,1] = 0;
            obj_control_battle.caller = 0;
            with (obj_cursor) instance_destroy();
            
            event_user(1);
            event_user(2);


            }
    } //End - Tactic selected from list
      
    io_clear();
    alarm[8] = 5;
} //End - during battle

if (global.zone_active == 2) {
        if (obj_control_battle.fight_over == 1) { 
            obj_control_battle.fight_over = 2; 
            event_user(0);
            exit;
        }
    }

}
/*
    if (global.zone_active == 2) {
        if (obj_control_battle.fight_over == 1) { 
			obj_control_battle.fight_over = 2; 

//start moved stuff
				if ((global.fight_boss == 1) && (boss_dead[8] == 1)){
		global.room_going_to = rm_main;
		global.zone_active = 10;    
    //with (obj_main) instance_destroy();

		} else {
			global.room_going_to = global.last_room;
			global.zone_active = 0;    
			        obj_main.x = global.main_lastx;
        obj_main.y = global.main_lasty;

		}
        obj_main.visible = false;
        instance_create(0,0,obj_fader);        
                
        eob_money = 0; 
        eob_exp = 0;
                
        //global.zone_active = 0;    
        
        
        //Boss
        global.fight_boss = 0;
        global.fight_boss_group = 0;
        global.fight_boss_region = 0;

			
			exit;
		}
    }

}
*/
//--------------------------------------------------------------------------------------
// X Key

if (BBB == true) {

    if ((global.zone_active == 2) && (obj_main.can_act == 1)){
        if (global.selector_active == 1){
        
            if (!(selector[1,0] == 1)) {
            //2,3 or 4 
                obj_cursor.x = 20; //58
                obj_cursor.y = 180; //168
                selector[1,0] = 1;
                selector[1,1] = 0;
                obj_control_battle.page = 0;
                obj_control_battle.ppp = 0;
                obj_cursor.sprite_index = spr_cursor_battle;
           
            }
        }
    }
    io_clear();
    alarm[8] = 5;
}
//--------------------------------------------------------------------------------------
// Up

if (UP == true) {

    //Main Fight List
    if ((global.selector_active == 1) && (selector[1,0] == 1)){
        if (obj_main.can_act == 1) {
            /*
            if (selector[1,1] > 0) {
                selector[1,1] -=1;
                obj_cursor.y -= 10;
            }
            */
            if ((selector[1,1] == 1) || (selector[1,1] == 3))  {
                selector[1,1] -=1;
                obj_cursor.y -= 20;
            } 
        }
        io_clear();
    }


    //Tactics & Item List
    if (global.selector_active == 1) {
        if ((selector[1,0] == 3) || (selector[1,0] == 4)){
            if (obj_main.can_act == 1) {
                if (selector[1,1] > 2){
                    if ((obj_cursor.y == __view_get( e__VW.YView, 0 )+168) && (obj_control_battle.page == 1)){
                        obj_control_battle.page -=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+218;
                        obj_cursor.x = __view_get( e__VW.YView, 0 )+16;
                        selector[1,1] -=2;
                        //increment by 8 for each page
                      if ((obj_cursor.x == __view_get( e__VW.XView, 0 )+116) && (obj_control_battle.page ==0)) selector[1,1] = 12;
                      if ((obj_cursor.x < __view_get( e__VW.XView, 0 )+116) && (obj_control_battle.page ==0)) selector[1,1] = 11;
            
                    }else{    
                        obj_cursor.y -= 10;//32;
                        selector[1,1] -=2;
                    }
                }
            }        
        }
    }
    io_clear();
    alarm[8] = 5;
}
//--------------------------------------------------------------------------------------
// Right

if (RIGHT == true) {

    if (global.selector_active == 1) { 
    if (obj_main.can_act == 1) {

        
            //Main Fight List
            if (selector[1,0] == 1) {
                if ((selector[1,1] == 0) || (selector[1,1] == 1) || (selector[1,1] == 2)) {
                    selector[1,1] +=2;
                    obj_cursor.x += 20;
                } 
            }
			
		    
            //Enemy/Target Select           
            if (selector[1,0] == 2){
                for(iii=1;iii<3;iii+=1) {
                    if (selector[1,1] < 2) { //6
                        if (((selector[1,1]+iii)) == 3) break;
                        if (instance_exists(enemy_slot[(selector[1,1]+iii)]) ) {
                            selector[1,1] +=iii;
                            obj_cursor.x = (enemy_slot[selector[1,1]].x - 16);
                            break;  
                        } 
                    }
                }
            }     
            // Tactic or  Item Select
            if  (selector[1,0] == 3) {
                ceiling = obj_main.items_current_num
            } else if (selector[1,0] == 4) {
                ceiling = obj_main.tactics_current_num
            }
            
            if ((selector[1,0] == 4) || (selector[1,0] == 3)){
                if (obj_cursor.x < 50){  //148
                    if (selector[1,1] < ceiling) {
                        selector[1,1] +=1;
                        obj_cursor.x += 108; //128
                    }
                }
            }
        } //can act
        io_clear();
    
    alarm[8] = 5;
	 } //Selector Active
}
//--------------------------------------------------------------------------------------
// Left

if (LEFT == true) {

if (global.selector_active == 1) { 
        if (obj_main.can_act == 1) {
        
            //Main Fight List
            if (selector[1,0] == 1) {
                if ((selector[1,1] == 2) || (selector[1,1] == 3) || (selector[1,1] == 4)) {
                    selector[1,1] -=2;
                    obj_cursor.x -= 20;
                } 
            }


    //Enemy Target select
    if (selector[1,0] == 2) {
                for(iii=1;iii<3;iii+=1) {    //6    
                    if (selector[1,1] > 0) {
                        if (((selector[1,1]-iii)) < 0) break;
                        if (instance_exists(enemy_slot[(selector[1,1]-iii)]) ) {
                            obj_cursor.x = (enemy_slot[(selector[1,1]-iii)].x - 16);//50);
                            selector[1,1] -=iii;
                            break;
                        }
                    }    
                }
            }
   
            //Item & Tactics select  
            if ((selector[1,0]) == 3  || (selector[1,0] == 4)){
                if (obj_main.can_act == 1) {
                    if (obj_cursor.x > 50){
                        selector[1,1] -=1;
                        obj_cursor.x -= 108;
                    }
                }
            }
        } //can act
        io_clear();
        alarm[8] = 5;    
    } //selector active
}
//--------------------------------------------------------------------------------------
// Down

if (DOWN == true) {


   // Main Fight List
    if ((global.selector_active == 1) && (selector[1,0] == 1)){
        if (obj_main.can_act == 1) {
            /*
            if (selector[1,1] < 4) {
                selector[1,1] +=1;
                obj_cursor.y += 10;
            }
            */
            if ((selector[1,1] == 0) || (selector[1,1] == 2)) {
                selector[1,1] +=1;
                obj_cursor.y += 20;
            }
        }
        io_clear();
    }
    
    
    
    if (selector[1,0] == 3){
        select_ceiling = obj_main.items_current_num;
    } else if (selector[1,0] == 4) {
        select_ceiling = obj_main.tactics_current_num;
    }


    if (global.selector_active == 1) {
        if ((selector[1,0] == 3) || (selector[1,0] == 4)){ 
            if (obj_main.can_act == 1) {
                if (selector[1,1] < (select_ceiling - 1)) {
                    if ((obj_cursor.y >= __view_get( e__VW.YView, 0 )+210) && (select_ceiling > 12)){
                        obj_control_battle.page +=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+168;
                        obj_cursor.x = __view_get( e__VW.XView, 0 )+16;
                        selector[1,1] +=2;
                        //increment by 8 for each page
                        if (obj_control_battle.page ==1) selector[1,1] = 13;
                
                    }else{    
                        obj_cursor.y += 10;
                        selector[1,1] +=2;
                    }
                }       
            }
        }
        io_clear();
    }

    alarm[8] = 5;
}

/* */
/*  */
