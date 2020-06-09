var AAA = (keyboard_check_released(ord("Z")) or gamepad_button_check_released(global.playcontrol_one, gp_face2) );
var BBB = (keyboard_check_released(ord("X")) or gamepad_button_check_released(global.playcontrol_one, gp_face1) );
var SELECT = (keyboard_check_released(ord("C")) or gamepad_button_check_released(global.playcontrol_one, gp_select) );
var START = (keyboard_check_released(vk_enter) or gamepad_button_check_released(global.playcontrol_one, gp_start));

var RIGHT = (gamepad_axis_value(global.playcontrol_one, gp_axislh) > 0);
var LEFT = (gamepad_axis_value(global.playcontrol_one, gp_axislh) < 0);
var UP = (gamepad_axis_value(global.playcontrol_one, gp_axislv) < 0);
var DOWN = (gamepad_axis_value(global.playcontrol_one, gp_axislv) > 0);


//----------------------------------------------------------------------
// Player Movement
if (moving == true) {
	if (target_x > x) {x+=4;} //4
	if (target_x < x) {x-=4;}
	if (target_y > y) {y+=4;}
	if (target_y < y) {y-=4;}
}

if (target_x == x && target_y == y) {
    moving = false;
    image_speed = 0;
}


if (alarm[1] >= 0) exit;
 
//----------------------------------------------------------------------
//RIGHT

if (RIGHT == true) {
    if (global.zone_active == 0) {
    
        //Move
        if (global.deactivated == 0) {
            if place_free(x+4, y) { //-8
			
	            if (moving == false) {
					if ((tilemap_get_at_pixel(tilemap,bbox_right+16,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right+16,bbox_bottom) != 0)){
						x += 0;	
					} else {
		                moving = true;
		                target_x += 16;
		                image_speed = 0.3;
		                direction = 0;
		                sprite_index = spr_main_right;
		                if (global.zone_fight == 1) battle_steps_traveled += 16;
					}
	            }    
            }    
        }
        //Merchant Perusal
        if (global.selector_active == 1){   
            if  (selector[1,0] == 3) {
                ceiling = obj_main.items_current_num
            } else if (selector[1,0] == 4) {
                ceiling = aaa.number_of_items;
            }
            if ((selector[1,0] == 3) ||  (selector[1,0] == 4)){    
                if (obj_cursor.x < __view_get( e__VW.XView, 0 )+50){ 
                    if (selector[1,1] < ceiling) {
                        selector[1,1] +=1;
                        obj_cursor.x += 108;
                    }
                }
            }
            alarm[1] = 10;
            io_clear();
        }
    }


    // Tactic or  Item Select
    if  (selector[1,0] == 3) {
        ceiling = obj_main.items_current_num
    } else if (selector[1,0] == 4) {
        ceiling = obj_main.tactics_current_num
    }
    
    if ((selector[1,0] == 4) || (selector[1,0] == 3)){
        if (can_act == 1) {
            if (obj_cursor.x < __view_get( e__VW.XView, 0 )+50){
                if (selector[1,1] < ceiling) {
                    selector[1,1] +=1;
                    obj_cursor.x += 108;
                }
            }
        }
        alarm[1] = 10;
        io_clear();
    }


//-------------------------------------------------
// Pause Screen

    if (global.zone_active = 1) {    
        // Tactic or  Item Select
        if (global.selector_active == 1){
            if ((selector[2,0] == 6) || (selector[2,0] == 4) || (selector[2,0] == 3)){
                    
                if ((selector[2,0] == 4) || (selector[2,0] == 6)) {
                    ceiling = obj_main.items_current_num;
                } else if  (selector[2,0] == 3){
                    ceiling = obj_main.tactics_current_num;
                }
    
                // Tactic/Item/Equipment Select
                if (obj_cursor.x < __view_get( e__VW.XView, 0 )+50){
                    if (selector[2,1] < ceiling) {
                        selector[2,1] +=1;
                        obj_cursor.x += 108;
                    }
                }
            }
        }
        io_clear();
        alarm[1] = 10;
    }
}
//----------------------------------------------------------------------
// LEFT

if (LEFT == true) {

    //-------------------------------------------------
    // Walking
    if (global.zone_active == 0) {
        if (global.deactivated == 0) {
            if place_free(x-4, y) { //8
	            if (moving == false) {
					if ((tilemap_get_at_pixel(tilemap,bbox_left-16,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_left-16,bbox_bottom) != 0)){
						x -= 0;					
					} else {
		                moving = true;
		                target_x -= 16;
		                image_speed = 0.3;
		                sprite_index = spr_main_left;
		                direction = 180;
		                if (global.zone_fight == 1) battle_steps_traveled += 16;
					}
	            }    
            }
        }    
        //Merchant/My items list
        if (global.selector_active == 1){
            if ((selector[1,0]) == 3  || (selector[1,0] == 4)){
                if (obj_cursor.x > __view_get( e__VW.XView, 0 )+50){
                    selector[1,1] -=1;
                    obj_cursor.x -= 108;
                }
            }
            io_clear();
            alarm[1] = 10;
        }
    }

    //------------------------------------------------
    // Pause Screen
    
    // Tactic/Item/Equipment Selection
    if (global.zone_active = 1) {
        if (global.selector_active == 1) {
            if (((selector[2,0] == 3 || selector[2,0] == 6)) || (selector[2,0] == 4)){
                if (obj_cursor.x > __view_get( e__VW.XView, 0 )+50){
                    selector[2,1] -=1;
                    obj_cursor.x -= 108;
                }
            }
        }
        io_clear();
        alarm[1] = 10;        
    }
}

//----------------------------------------------------------------------
// UP

if (UP == true)  {


    // Character Movement
    
    if (global.zone_active == 0) {
        if (global.deactivated == 0) {
            if place_free(x, y-4) { //-8
	            if (moving == false) {
					if ((tilemap_get_at_pixel(tilemap,bbox_left,bbox_top-16) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_top-16) != 0)){
						y -= 0;					
					} else {
		                moving = true;
		                target_y -= 16;
		                image_speed = 0.3;
		                sprite_index = spr_main_up;
		                direction = 90;
		                if (global.zone_fight == 1) battle_steps_traveled += 16;
					}
	            }    
            }
        }
    
    //-------------------------------------------------
    // Overworld 
    
        //NPC Interaction
        if ((global.selector_active == 1) && (selector[1,0] == 1)){
            if (selector[1,1] > 1) {
                selector[1,1] -=1;
                obj_cursor.y -= 10;//32;
            }
            io_clear();
            alarm[1] = 10;
        }
    
        // Merchant/player item Selection
        if (global.selector_active == 1) {
            if ((selector[1,0] == 3 ) || (selector[1,0] == 4)){
                if (selector[1,1] > 2){
                    if ((obj_cursor.y == __view_get( e__VW.YView, 0 )+168) && (obj_control.page == 1)){ //260
                        obj_control.page -=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+218;//260;
                        obj_cursor.x = __view_get( e__VW.YView, 0 )+16;
                        selector[1,1] -=2;
                        if (obj_control.page ==0) selector[1,1] = 1;        
                    } else {    
                        obj_cursor.y -= 10;//32;
                        selector[1,1] -=2;
                    }
                }
            }    
            io_clear();
            alarm[1] = 10;
        }
    }
    
    
    //-------------------------------------------------
    // Pause Screen
    
    if (global.zone_active = 1) {
    
        //Main Menu
        if ((global.selector_active == 1) && (selector[2,0] == 1)){
            if (selector[2,1] > 0) {
                selector[2,1] -=1;
                obj_cursor.y -= 10;//32;
            }
        }
    
        // Tactic/Item/Equipment Selection
        if (global.selector_active == 1) {
            if (((selector[2,0] == 3 || selector[2,0] == 6)) || (selector[2,0] == 4)){
                if (selector[2,1] > 2){
                    if ((obj_cursor.y == __view_get( e__VW.YView, 0 )+168) && (obj_control.page == 1)){ //260
                        obj_control.page -=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+218;//260;
                        obj_cursor.x = __view_get( e__VW.YView, 0 )+16;
                        selector[2,1] -=2;
                        if ((obj_cursor.x == __view_get( e__VW.XView, 0 )+116) && (obj_control.page ==0)) selector[2,1] = 12;
                        if ((obj_cursor.x < __view_get( e__VW.XView, 0 )+116) && (obj_control.page ==0)) selector[2,1] = 11;
                    } else {    
                        obj_cursor.y -= 10;//32;
                        selector[2,1] -=2;
                    }
                }
            }
        }
    
        //Euipment Menu (small side menu)
        if ((global.selector_active == 1) && (selector[2,0] == 5)){
            if (selector[2,1] > 0) {
                selector[2,1] -=1;
                obj_cursor.y -= 10;//20;
            }
        }
        io_clear();
        alarm[1] = 10;
    }
    io_clear();
}

//----------------------------------------------------------------------
// DOWN

if (DOWN == true) {

    //----------------------------------------------
    // Walking
    
    if (global.zone_active == 0) {
        if (global.deactivated == 0) {
            if place_free(x, y+4) { //+8                                
                if (moving == false) {
					if ((tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom+16) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom+16) != 0)){
						y += 0;					
					} else {
	                    moving = true;
	                    target_y += 16;
	                    image_speed = 0.3;
	                    sprite_index = spr_main_down;
	                    direction = 270;
	                    if (global.zone_fight == 1) battle_steps_traveled += 16;
					}
                }
            }
        }
    
        //Merchant,Question primary list selection
        if ((global.selector_active == 1) && (selector[1,0] == 1)){
            if (obj_main.aaa.npc_type == 1) {
                if (selector[1,1] < 2) {
                    selector[1,1] +=1;
                    obj_cursor.y += 10;//32;
                }
            } else {
                if (selector[1,1] < 3) {
                    selector[1,1] +=1;
                    obj_cursor.y += 10; //32;
                }
            }
            io_clear();
            alarm[1] = 10;
        }
    
    
        //Peruse Merchant items
        if (global.selector_active == 1){
            if (selector[1,0] == 4){
                if (selector[1,1] < (aaa.number_of_items - 1)) {
                    if ((obj_cursor.y >= __view_get( e__VW.YView, 0 )+280) && (aaa.number_of_items > 8)){ //old 356
                        obj_control.page +=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+220; //260;
                        if (obj_control.page ==1) selector[1,1] = 13;                
                    }else{    
                        obj_cursor.y += 10;//32;
                        selector[1,1] +=2;
                    }
                }       
            }
    
            //Peruse player items
            if (selector[1,0] == 3){
                if (selector[1,1] < (obj_main.items_current_num - 1)) {
                    if ((obj_cursor.y >= __view_get( e__VW.YView, 0 )+210) && (obj_main.items_current_num > 12)){ //old 356
                        obj_control.page +=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+168;//260;
                        obj_cursor.x = __view_get( e__VW.YView, 0 )+16;
                        selector[1,1] +=2;
                        if (obj_control.page ==1) selector[1,1] = 13;                
                    }else{    
                        obj_cursor.y += 10;//32;
                        selector[1,1] +=2;
                    }
                }       
            }
            io_clear();
            alarm[1] = 10;
        }
    }


    //------------------------------------------------------------------
    // Pause Screen
    
    if (global.zone_active = 1) {
    
        // Main List
        if ((global.selector_active == 1) && (selector[2,0] == 1)){
            if (selector[2,1] < 3) {
                selector[2,1] +=1;
                obj_cursor.y += 10;
            }
        }
    
    
        // Item List
        if (global.selector_active == 1){
            if ((selector[2,0] == 6) || (selector[2,0] == 4)){
        
                if (selector[2,1] < (obj_main.items_current_num - 1)) {
                    if ((obj_cursor.y >= __view_get( e__VW.YView, 0 )+210) && (obj_main.items_current_num > 12)){
                        obj_control.page +=1;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+168;
                        obj_cursor.x = 16;
                        selector[2,1] +=2;
                        if (obj_control.page ==1) selector[2,1] = 13;                                
                    } else {    
                        obj_cursor.y += 10;
                        selector[2,1] +=2;
                    }
                }       
            }
        }
    
        // Tactics List
        if ((global.selector_active == 1) && (selector[2,0] == 3)){
    
            if (selector[2,1] < (obj_main.tactics_current_num - 1)) {
                if ((obj_cursor.y >= __view_get( e__VW.YView, 0 )+210) && (obj_main.tactics_current_num > 12)){
                    obj_control.page +=1;
                    obj_cursor.y = __view_get( e__VW.YView, 0 )+168;
                    obj_cursor.x = 16;
                    selector[2,1] +=2;
                    if (obj_control.page ==1) selector[2,1] = 13;           
                }else{    
                    obj_cursor.y += 10;
                    selector[2,1] +=2;
                }
            } 
        }
    
        // Equipment List (cursor next to equip list)
        if ((global.selector_active == 1) && (selector[2,0] == 5)){
            if (selector[2,1] < 4) {
                selector[2,1] +=1;
                obj_cursor.y += 10;
            }
        }
        io_clear();
        alarm[1] = 10;
    
    }
    io_clear();
}
//-------------------------------------------------------------------------------------
// AAA Button (z key)

//Talk, confirm selection

if (AAA == true) {
//----------------------------
// Non-fight Screen

    if (global.zone_active == 0) {
    
        aaa = instance_nearest(self.x,self.y,obj_p_npc);
        bbb = instance_nearest(self.x,self.y,obj_treas);
            
        //Treasure Chest
        if (distance_to_object(bbb)<16) {
            if (treasure[bbb.treasure_id,3] == true) { 
                
                if (obj_main.items_current_num == 24) {
                    obj_control.mess_win_caller = "Inventory Full.";                               
                    obj_control.alarm[0] = 60;
                    exit;
                }
            
                if (treasure[bbb.treasure_id,2] == 1){
                    scr_item_transfer(6,treasure[bbb.treasure_id,0],1,1);
                } else if (treasure[bbb.treasure_id,2] == 2){
                    scr_item_transfer(6,treasure[bbb.treasure_id,0],1,2);
                } else if (treasure[bbb.treasure_id,2] == 3){
                    obj_main.tactics_current_num += 1;
                    obj_main.tactic_slot[obj_main.tactics_current_num] = treasure[bbb.treasure_id,1];
                }
                obj_control.alarm[0] = 60;
                treasure[bbb.treasure_id,3] = false;
                bbb.image_index = 1;            
                io_clear();
                alarm[1] = 10;
                exit;
            }
        }
        
        //NPC start conversation
        if (distance_to_object(aaa)<16) {
        
            //If not talking yet...
            if (global.npc_acting == 0) {
                 
                //audio_play_sound(snd_talk, 9, false);
                //Find out NPC type
                if ((aaa.npc_type == 1) || (aaa.npc_type == 2)){
                    global.selector_active = 1;
                    selector[1,0] = 1;
                    selector[1,1] = 1;
                    instance_create(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+90,obj_cursor);
    
                } else { 
                    selector[1,1] = 1;
                }
                if (aaa.npc_type == 4){
                    hp = hp_max;
                    tp = 50;
                }
                
                //set game on npc talking mode
                global.deactivated = 1;
                global.npc_acting = 1; 
                aaa.acting =1;
				global.npc_calling = aaa.npc_myid;
                io_clear();
                alarm[1] = 10;
                exit;
            }
           
            //NPC is already talking, so advance dialogue or go into boss fight
            if (global.npc_acting == 1) {
            
                //Advance dialog for multiple dialogue boxes
                if (selector[1,0] == 0){
                    if ((selector[1,1] == 1) && (!(aaa.npc_dia2 == "None"))) {
                        selector[1,1] = 2;
                        io_clear();
                        alarm[1] = 10;
                        exit;
                    } else if ((selector[1,1] == 2) && (!(aaa.npc_dia3 == "None"))) {
                        selector[1,1] = 3;
                        io_clear();
                        alarm[1] = 10;
                        exit;
                    }
                    
                    //Start Boss Battle
                if ((aaa.npc_type >= 20) && (selector[1,1] >= 1)){
                    switch (aaa.npc_type) 
                    {
                        case (20) : global.fight_boss_region = 8;
                                    global.fight_boss_group = 20;
                                    global.fight_boss = 1;
                                    break;
                        case (21) : global.fight_boss_region = 8;
                                    global.fight_boss_group = 21;
                                    global.fight_boss = 1;
                                    break;
                        case (22) : global.fight_boss_region = 8;
                                    global.fight_boss_group = 22;
                                    global.fight_boss = 1;
                                    break;
                        case (23) : global.fight_boss_region = 8;
                                    global.fight_boss_group = 23;
                                    global.fight_boss = 1;
                                    break;
                        case (24) : global.fight_boss_region = 9;
                                    global.fight_boss_group = 24;
                                    global.fight_boss = 1;
                                    break;
                        case (25) : global.fight_boss_region = 9;
                                    global.fight_boss_group = 25;
                                    global.fight_boss = 1;
                                    break;
                        case (26) : global.fight_boss_region = 9;
                                    global.fight_boss_group = 26;
                                    global.fight_boss = 1;
                                    break;
                        case (27) : global.fight_boss_region = 9;
                                    global.fight_boss_group = 27;
                                    global.fight_boss = 1;
                                    break;

                    }
					global.deactivated = 0;
	                global.npc_acting = 0; 
	                aaa.acting = 0;
	                global.npc_calling = 0;
					
                        
                    obj_control.alarm[0] = 0;
                    visible = false;
                    global.main_lastx = x;
                    global.main_lasty = y;
                    global.last_room = room;
                    global.zone_active = 2;
                    global.room_going_to = obj_control.room_fight;
					selector[1,0] = 0;
					selector[1,1] = 0;
						
                    instance_create(x,y,obj_fader);
                    alarm[1] = 10;
                    exit;
                    }
                }
        
                //Regular/Question - Exit when Z pressed again during question reply   
                if ((aaa.npc_type == 1) || (aaa.npc_type == 0) || (aaa.npc_type == 4) || (aaa.npc_type == 3)) {         
	                if ((selector[1,0] == 0) || (selector[1,0] == 2) || (selector[1,0] == 3)) {
	                    global.deactivated = 0;
	                    global.npc_acting = 0; 
	                    aaa.acting = 0;
						with (aaa) move_snap(16,16);
		            
	                    global.npc_calling = 0;
						aaa.alarm[0] = 20;                
	                    selector[1,0] = 0;
	                    selector[1,1] = 0;
	                    io_clear();
	                    alarm[1] = 10;
	                    exit;
	                }
	            }
				/*
                //Question - go to next dialogue for question reply
                if ((selector[1,0] == 1) && (aaa.npc_type == 1)) {
                    //audio_play_sound(snd_select, 8, false);
                    selector[1,0] = 2;
                    with (obj_cursor) instance_destroy();
                    global.selector_active = 0;
                    io_clear();
                    alarm[1] = 10;
                    exit;
                }
				*/
                //Merchant - Choose from Seller list: display my items, sellers items, exit
                // 1=display seller items,2=display my items,3=exit
                if ((selector[1,0] == 1) && (aaa.npc_type == 2)) {
                    //audio_play_sound(snd_select, 8, false);
                    if (selector[1,1] == 1) {
                        obj_cursor.x = __view_get( e__VW.XView, 0 )+16;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+168;
                        selector[1,0] = 4;
                        selector[1,1] = 1;
                        io_clear();
                        alarm[1] = 10;
                        exit;
                    } else if (selector[1,1] == 2) {
                        obj_cursor.x = __view_get( e__VW.XView, 0 )+16;
                        obj_cursor.y = __view_get( e__VW.YView, 0 )+168;
                        selector[1,0] = 3;
                        selector[1,1] = 1;
                        io_clear();
                        alarm[1] = 10;
                        exit;
                    } else if (selector[1,1] == 3) {
                        global.deactivated = 0;
                        global.selector_active = 0;
                        global.npc_acting = 0; 
                        aaa.acting = 0;
                        aaa.alarm[0] = 20;
                        global.npc_calling = 0;
                        with (obj_cursor) instance_destroy();
                        selector[1,0] = 0;
                        selector[1,1] = 0;
                        io_clear();
                        alarm[1] = 10;
                        exit;
                    }       
                }
            TEMPBUY = 0;
            // Purchase from sellers list
            if (selector[1,0] == 4){
                //audio_play_sound(snd_select, 8, false);
                if (item[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],3] > money) {
                    //show_message("item cost: " + string(item[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],3]));
                    obj_control.alarm[0] = 60;
                    obj_control.mess_win_caller = "Cannot afford this purchase.";
                    TEMPBUY = 1;
                }
                if (obj_main.items_current_num == 20) {
                    obj_control.mess_win_caller = "Inventory Full.";                               
                    obj_control.alarm[0] = 60;
                    TEMPBUY = 1;
                }
                if (TEMPBUY == 0) {       
                    money -= item[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],3];
					obj_control.mess_win_caller = "Item Purchased.";                               
                    obj_control.alarm[0] = 60;
                    
                    scr_item_transfer(2,npc_sell_list[npc[global.npc_calling,15],selector[1,1]],1,1);
                }
            }
        
            //Sell Item to NPC
            if (selector[1,0] == 3){
                //audio_play_sound(snd_select, 8, false);
				obj_control.mess_win_caller = "Item Sold.";                               
                    obj_control.alarm[0] = 60;
                    
                scr_item_transfer(2,selector[1,1],2,1);
                io_clear();
                alarm[1] = 10;
            }            
        }
    }
    io_clear();
    alarm[1] = 10;    
}


//-------------------------------------------------------------------
//-------------------------------------------------------------------
// Pause Screen


//OLD [2,0] - 1 Main list, 3 - tactics, 4 - item, 5 - equipment menu, 6 - equipment select from item list from equipment 

if (global.zone_active = 1) {
    audio_play_sound(snd_select, 10, false);

    //Main List
    if (selector[2,0] == 1){
        //Equipment - go to list 
        if (selector[2,1] == 0){ 
            obj_control.caller = 2;                
            selector[2,0] = 5;
            selector[2,1] = 0;
            obj_cursor.x = 56; //(room_width/2)-10; //280
            obj_cursor.y = 8; 
            io_clear();
            alarm[1] = 10;
            exit;
    
        //Tactics - go to list
        } else if (selector[2,1] == 1){     
            obj_control.caller = 3;
            selector[2,0] = 3;
            selector[2,1] = 1;
            obj_main.depth = 1;
            obj_cursor.x = 16; ;
            obj_cursor.y = 168; ;
            io_clear();
            alarm[1] = 10;
            exit;
        //Item - go to list
        } else if (selector[2,1] == 2){ 
            obj_control.caller = 4;
            selector[2,0] = 4;
            selector[2,1] = 1;            
            obj_main.depth = 1;
            obj_cursor.x = 16; ;
            obj_cursor.y = 168; ;
            io_clear();
            alarm[1] = 10;
            exit;
        } else if (selector[2,1] == 3){ 
            game_save("Luminaire-Save.dat");
             obj_control.alarm[0] = 60;
             obj_control.mess_win_caller = "Game Saved.";                   
            io_clear();
            alarm[1] = 10;
            exit;
        }
    }
    
    if (selector[2,0] == 5){ 
            obj_control.caller = selector[2,1];
            obj_main.depth = 1;
            selector[2,0] = 6;
            selector[2,1] = 1;
            obj_cursor.x = 16;
            obj_cursor.y = 168; 
            io_clear();
            alarm[1] = 10;
            exit;
    }
        
    //Equip Arm/Armor
    if (selector[2,0] == 6){ 
    
        // take item in slot and plug into previous seclected equip slot (caller)
        // reset cursor to equip select list. remove main list
                             
            if (obj_main.inventory[selector[2,1],2] == 2) {
                
                TEMPBB = 0;
                if ((equip[obj_main.inventory[selector[2,1],0],2] == "ARM") && ((obj_control.caller != 0) &&  (obj_control.caller != 1))) { TEMPBB = 1; //break; 
                } else if ((equip[obj_main.inventory[selector[2,1],0],2] == "HEAD") && (obj_control.caller != 2) && (TEMPBB == 0)) { TEMPBB = 1; //break; //continue; 
                } else if ((equip[obj_main.inventory[selector[2,1],0],2] == "BODY") && (obj_control.caller != 3)&& (TEMPBB == 0)) { TEMPBB = 1; //break; //continue; 
                } else if ((equip[obj_main.inventory[selector[2,1],0],2] == "ACC") && (obj_control.caller != 4)&& (TEMPBB == 0)) { TEMPBB = 1; //break; //continue;  
                }
                if (TEMPBB == 0) { 
                    //actually equip item
                    obj_main.equipped[obj_control.caller] = obj_main.inventory[selector[2,1],0];
                    obj_control.page = 0;
                    obj_control.ppp = 1;
                                
                    selector[2,0] = 5;
                    selector[2,1] = 0;
                    obj_cursor.x = 56; //350;
                    obj_cursor.y = 8;
                    io_clear();
                    alarm[1] = 10;
                    exit;
    
                } else if (TEMPBB == 1){
                    obj_control.mess_win_caller = "Wrong Slot.";                               
                    obj_control.alarm[0] = 60;
                    io_clear();
                    alarm[1] = 10;
                    exit;             
                }
                 
            } else if (obj_main.inventory[selector[2,1],2] == 1){
                obj_control.mess_win_caller = "This is an item.";                 
                obj_control.alarm[0] = 60; 
                io_clear();
                alarm[1] = 10;
                exit;
            } 
            io_clear();
            alarm[1] = 10;
            exit;
    }
    //------------------------------------------
    // Use item selected from list


    if ((global.selector_active == 1) && (selector[2,0] == 4)){
        if (obj_main.inventory[selector[2,1],2] == 2) {
        obj_control.alarm[0] = 60;
                obj_control.mess_win_caller = "This is equipment.";                   
                alarm[1] = 10;
                exit;
        } 

        for(iii=4;iii<11 ;iii+=2){
            scr_stat_ch("main","item",selector[2,1],0,iii,0);
        }
		audio_play_sound(snd_item, 10, false);
     
        scr_item_transfer(4,selector[2,1],2,1);
        obj_control.ppp = 1;            
        obj_control.page = 0;
        selector[2,0] = 1;
        selector[2,1] = 0;
        obj_main.depth = -1;
        obj_cursor.x = 30;
        obj_cursor.y = 86;
        obj_control.caller = 0;
        io_clear();
        alarm[1] = 10;
        exit;
    }
    //------------------------------------------
    // Tactic selected from list

    if ((global.selector_active == 1) && (selector[2,0] == 3)){
        if (tactic[selector[2,1],2] > tp) {
                obj_control.alarm[0] = 60;
                obj_control.mess_win_caller = "Not enough TP to use this tactic.";                   
                alarm[1] = 10;
            exit;
        } 
        selections_tactic = selector[2,1]; 
        if (tactic[selector[2,1],11] == "tar_self"){
			
                tp -= tactic[obj_main.tactic_slot[selections_tactic],2];
        
                for(iii=3;iii<10 ;iii+=2){
                    scr_stat_ch("main","tactic",selector[2,1],255,iii,0);
                }
				audio_play_sound(tactic[obj_main.tactic_slot[obj_main.selections_tactic],14], 10, false);
    
                obj_control.page = 0;
                obj_control.page = 0;
                selector[2,0] = 1;
                selector[2,1] = 0;
                selections_tactic = 0;
                obj_main.depth = -1;
                obj_cursor.x = __view_get( e__VW.XView, 0 )+30;
                obj_cursor.y = __view_get( e__VW.YView, 0 )+86; 
                obj_control.caller = 0;
                io_clear();
                alarm[1] = 10;
                exit;
        } else {
                obj_control.alarm[0] = 60;
                obj_control.page = 0;
            selector[2,0] = 1;
                selector[2,1] = 0;
                selections_tactic = 0;
                obj_control.mess_win_caller = "Cannot use this tactic now.";                   
        }
    }

    io_clear();
    alarm[1] = 10;

}

//-------------------------------------------------------------------
//-------------------------------------------------------------------
// Story Screen


if ((global.zone_active == 6) && (global.story_flag >=2)){

    if (story_text[global.story_flag,(global.story_advancer+1)] != "") { //NULL
        if (global.story_advancer <= 4 ) {
            global.story_advancer += 1;
        }
        io_clear();
    } else {
        global.story_advancer = 0;
        global.story_flag += 1;
        global.zone_active = 0;
        global.room_going_to = global.last_room;
        x = global.main_lastx;
        y = global.main_lasty; 
		target_x = x;
		target_y = y;
        room = global.last_room;
        battle_steps = 0;
    }
    io_clear();
    alarm[1] = 10;

}     
    

}
//---------------------------------------------------------------------------------------
// x key

if (BBB == true) {

    //---------------------------------------------------------
    // Pause Screen
    
    if (global.zone_active == 1){
        if (global.selector_active == 1){
        
            if (selector[2,0] == 6) {
                audio_play_sound(snd_select, 8, false);
    
                selector[2,0] = 5;
                selector[2,1] = 0;
                obj_cursor.x = __view_get( e__VW.XView, 0 )+56;//350;
                obj_cursor.y = __view_get( e__VW.YView, 0 )+8;//20;
                obj_main.depth = -1;
                obj_control.page =0;
                io_clear();
                alarm[1] = 10;
                exit;
            }
            if (selector[2,0] == 1) {
            
				global.zone_active = 0;    
				global.selector_active = 0;
    
				selector[2,0] = 0;
				selector[2,1] = 0;
				selector[1,0] = 0;
				selector[1,1] = 0;
				obj_control.page = 0;
				with (obj_cursor) instance_destroy();

				can_act = 0;
				x = global.main_lastx;
				y = global.main_lasty;
				depth = 0;
    
				room = global.last_room;
				io_clear();
				exit;
			}
            if (!(selector[2,0] == 1)) {
                //2,3 or 4 
                //From item, tactic, or equip list
                audio_play_sound(snd_select, 8, false);
    
                obj_cursor.x = __view_get( e__VW.XView, 0 )+30;//20;
                obj_cursor.y = 86; //view_yview[0]+30;//220;
                selector[2,0] = 1;
                selector[2,1] = 0;
                obj_main.depth = -1;
                obj_control.page =0;
                io_clear();
                alarm[1] = 10;
                exit;
            }
        }
    }
    
    if (global.zone_active == 0) {
	
			with (obj_trigger)instance_destroy();
	}
    //---------------------------------------------------------
    // Regular

    if (global.zone_active == 0) {
    
        if (global.npc_acting == 1) {
            if ((selector[1,0] == 4) || (selector[1,0] == 3)) {
                audio_play_sound(snd_select, 8, false);
            
                obj_cursor.x = __view_get( e__VW.XView, 0 )+5;
                obj_cursor.y = __view_get( e__VW.YView, 0 )+90;//220;
                selector[1,0] = 1;
                selector[1,1] = 1;
                obj_control.page = 0;
                io_clear();
                //break;
             }
        }
    }
    io_clear();
    alarm[1] = 10;
}
//---------------------------------------------------------------------------------------
// c key
if (SELECT == true) {

//Removes equipment from slot selected

    if (selector[2,0] == 5){ 
        obj_control.caller = selector[2,1];
        obj_main.equipped[obj_control.caller] = 0;
        io_clear();
        //break;
    }
    alarm[1] = 10;        
}
//---------------------------------------------------------------------------------------
// enter key

if (START == true) {

//Enter and exit Pause menu (from non-fight only)

	if ((global.zone_active == 0) && (global.npc_acting ==0)){
		global.zone_active = 1;
		global.main_lastx = x;
		global.main_lasty = y;
    
		obj_control.alarm[0] = 0;

		can_act = 1;
		x = 80;
		y = 280;
		depth = -1;

		global.last_room = room; 
		room = rm_main;
		io_clear();
        
	} else if (global.zone_active == 1) {
		global.zone_active = 0;    
		global.selector_active = 0;
    
		selector[2,0] = 0;
		selector[2,1] = 0;
		selector[1,0] = 0;
		selector[1,1] = 0;
		obj_control.page = 0;
		with (obj_cursor) instance_destroy();

		can_act = 0;
		x = global.main_lastx;
		y = global.main_lasty;
		depth = 0;
    
		room = global.last_room;
		io_clear();
		}
		
    io_clear();
    alarm[1] = 10;
}

/* */
/*  */
