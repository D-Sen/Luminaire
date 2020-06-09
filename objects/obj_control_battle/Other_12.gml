/// @description Actual turn
// You can write your code in this editor


//--------------------------------------------
//Check for all turns done (has to be 1)

temp_done = 0;
for (hhh=0;hhh<4;hhh+=1) {
    if (attack_order[hhh] == noone) temp_done +=1;
}

//--------------------------------------------
//Check for battle end (has to be 2)

if (enemy_number == 0) {
    temp_done = 0;
    event_user(0);
    exit;
}        
    

battle_text[0] = "";
battle_text[1] = "";
battle_text[2] = "";
battle_text[3] = "";



//--------------------------------------------
//If turns done,reset


if (temp_done == 4)  {

    //if first turn remove luck boost from strike first
    if (ambush_flag == 1) {
        if ( obj_main.temp_stats[8] >= 100) obj_main.temp_stats[8] -= 100;        
    }

    //Set flag back to 0 after luck removal, but before priority set to 2
    ambush_flag = 0;
    temp_done = 0;
    actor_curr = 0;
    obj_control_battle.caller = 0;
    obj_main.selections_tactic = 0
        
    b_parts[0] = 0;
    b_parts[1] = 0;
    b_parts[2] = 0;
    b_parts[3] = 0;
/*    
    battle_text[0] = "";
    battle_text[1] = "";
    battle_text[2] = "";
    battle_text[3] = "";
  */  
    event_user(0);
    
    if (fight_over == 0) {
        global.selector_active = 1;
        selector[1,0] = 1;
        selector[1,1] = 0;
        obj_main.can_act = 1;
        instance_create(20,180,obj_cursor); //58/168
        obj_cursor.sprite_index = spr_cursor_battle;
        //exit;
    }
    exit;        
    

}


//------------------------------------------------------------
if (attack_order[actor_curr] == obj_main.id) {
    scr_battle(b_parts[0],b_parts[1],b_parts[2],b_parts[3]);
    if (b_parts[1] == 3) scr_item_transfer(3,b_parts[2],2,1);

    attack_order[actor_curr] = noone;
    actor_curr += 1;
    alarm[11] = 60;

} else if ((attack_order[actor_curr] != noone) && (attack_order[actor_curr] != obj_main.id)) {
    for (jjj=0;jjj<4;jjj+=1) {
        temp_match = 255;
        if (attack_order[actor_curr] == enemy_slot[jjj]) {
            temp_match = jjj;
            break;
        }
    }
    
    
    
    //-------------------------------------
    //Good Status Check for removal
    for(ggg = 0;ggg < 3;ggg+=1) {
        if (enemy_slot[temp_match].status_effect_slot[ggg] == true) {
            if ((irandom_range(0,20)) <= 3)enemy_slot[temp_match].status_effect_slot[ggg] = false;                     
        }
    }
    //Negative status Check for removal
    for(ggg = 4;ggg <= 7;ggg+=1) {
        if (enemy_slot[temp_match].status_effect_slot[ggg] == true) {
            if ((irandom_range(0,20)) <= enemy_slot[temp_match].en_mdef) enemy_slot[temp_match].status_effect_slot[ggg] = false;
        }
    }

    // Application of status effects if present (regen,refresh,virus)
    if ((enemy_slot[temp_match].status_effect_slot[0] == true) && (enemy_slot[temp_match].en_hp < enemy_slot[temp_match].en_hpm)) enemy_slot[temp_match].en_hp += 5  * (enemy_slot[temp_match].en_mdef / 5);
    if (enemy_slot[temp_match].status_effect_slot[1] == true) enemy_slot[temp_match].en_tp += 5 * (enemy_slot[temp_match].en_mdef / 5);
    
    if (enemy_slot[temp_match].status_effect_slot[5] == true) {
        enemy_slot[temp_match].en_hp -= 555 * (enemy_slot[temp_match].en_mdef / 5);
        if (enemy_slot[temp_match].en_hp < 0 ) battle_text[0] = enemy_slot[temp_match].en_name + " dies from a virus!";
    }                
    
    if (scr_enemy_death(temp_match) == false){
    
    
    //Start Enemy AI after passing Status checks
    enemy_slot[temp_match].can_act = 1;
    
    //Run
    if (enemy_slot[temp_match].en_mor - 2 * enemy_slot[temp_match].en_level + irandom_range(0,50) < 80) {
        battle_text[0] = enemy_slot[temp_match].en_name + " ran away!";

        with (enemy_slot[temp_match]) instance_destroy();
        enemy_number -= 1;
        //exit;
    } else {

    
    //scr_enemy_turn(temp_match); //0
    //-------------------------------------
    choose_enemy_act = 0;
    vvv = 0;
    while (vvv != 1) {
        choose_enemy_act = choose(0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,3,4); //5
        if (choose_enemy_act > 0) {
            if (enemy_slot[temp_match].en_tact_slot[choose_enemy_act] > 0) {
                if (enemy_slot[temp_match].en_tp >= tactic[enemy_slot[temp_match].en_tact_slot[choose_enemy_act],2]) 
                {
                    battle_text[0] = enemy_slot[temp_match].en_name + " uses " + tactic[enemy_slot[temp_match].en_tact_slot[choose_enemy_act],1];
                    scr_battle(temp_match,2,0,choose_enemy_act);                             
                    vvv = 1;                     
                } 
            }
        } else if ( choose_enemy_act == 0 ) {
            battle_text[0] = enemy_slot[temp_match].en_name + " attacks!";
            scr_battle(temp_match,1,0,0); 
            vvv = 1; 
        }
    }
    } 
    }
    with (obj_main) event_user(0)
    //-------------------------------------
    attack_order[actor_curr] = noone;
    actor_curr += 1;
    alarm[11] = 60;
    
} else if (attack_order[actor_curr] == noone) {
    actor_curr += 1;
    alarm[11] = 1;
}




