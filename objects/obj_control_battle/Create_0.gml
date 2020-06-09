//-----------------------------------------------
//S ~ General, Player, Enemy
//-----------------------------------------------

//-----------------------------------------------
//General

// Checks to see the fight status
// 0 = Fight Active
// 1 = No enemies left, process money/exp/items, display 1st win screen
// 2 = Conditions met for 1, & display 2nd win (item) screen
// 3 = Conditions met for 1 & 2, do final battle cleanup
fight_over = 0;


// For redirecting called function through selector 2 
// Used by Obj_main, scr_battle call
// 1 Fight,2 Tactic,3 Item,4 Run
caller = 0;

//which page to draw for multi-page list of items/tactics
page = 0;

//Exp & Money earned at end of battle
eob_exp = 0;
eob_money = 0;

eob_items[0] = 0;
eob_items_num = 0;

// Message Window caller
mess_win_caller = 0;

//Flag for when main has leveled up
level_up = false;

//-----------------------------------------------
//Enemy

//Number of monsters currently fighting with
enemy_number = 0;

//placeholder for each possible monster, matched with enemy ID number (enemy[0,0])
//Alarm number is same as enemy_number 4=4, slot number will always be -1
enemy_slot[0] = noone;
enemy_slot[1] = noone;
enemy_slot[2] = noone;

//List for what player/enemy attacks in what order
attack_order[0] = noone;
attack_order[1] = noone;
attack_order[2] = noone;
attack_order[3] = noone;

//-----------------------------------------------
//NEW FIGHT

//list for determing turn order
pr_queue = ds_priority_create();


//Whether to do special action for type of battle
// 0 - Regular, 1 - First Strike/Suprise Enemy, 3 - Enemy Ambush
ambush_flag = 0;


//used to count through attack_order[x]
actor_curr = 0;


// For deconstructing "scr_battle" to be transfered 
b_parts[0] = 0;
b_parts[1] = 0;
b_parts[2] = 0;
b_parts[3] = 0;


//replaces message_win_caller
battle_text[0] = "";
battle_text[1] = "";
battle_text[2] = "";
battle_text[3] = "";



//-----------------------------------------------
//Player

//push character alarm start further down
/*
obj_main.x = 200;
obj_main.y = 104;
obj_main.visible = true;
obj_main.direction = 180;
obj_main.sprite_index = spr_main_left; 
*/
obj_main.can_act = 1;


//Called here to reset counter when enemy is triggerred tile or through talking
//Same code is in obj_main - step when actual battle starts
obj_main.battle_steps = 0;
obj_main.battle_flag = 0;


//-----------------------------------------------
//Enemies

if (global.fight_boss == 0){

    //Randomly Choose 1 group to fight from a region
    group_current = (irandom_range(0,3));

    //Get the enemy list for group from region 
    zzz = region[global.region_current,group_current];
    
    // X & Y for enemies 
    enemy_finder_x = (room_width/8)+16;
    enemy_finder_y = 96;//64 //room_height/5;
} else {

    //Fight Boss    
    //short circuit because group # matches with actual enemy number
    zzz = global.fight_boss_group;
    enemy_finder_x = 96;
    enemy_finder_y = 108; 

}
    

//Get enemies from group, place enemies until end of group or NULL hit
for(iii=0;iii<3;iii+=1) {
    if (group[zzz,iii] == 255) {
        break;
    } else {
        enemy_finder_x += 32;     
        enemy_number +=1;  
		
        enemy_slot[iii] = instance_create(enemy_finder_x,enemy_finder_y,obj_p_enemy);     
        enemy_slot[iii].sprite_index = enemy[group[zzz,iii],3];
        enemy_slot[iii].en_name = enemy[group[zzz,iii],1];  //Name 
        enemy_slot[iii].en_level = enemy[group[zzz,iii],4];  //Level
        enemy_slot[iii].en_hp = enemy[group[zzz,iii],5]; //Hit Points
        enemy_slot[iii].en_hpm = enemy[group[zzz,iii],6];  //Max Hit Points
        enemy_slot[iii].en_tp = enemy[group[zzz,iii],7]; //Tactical Points
        enemy_slot[iii].en_money = enemy[group[zzz,iii],8]; //Money
        enemy_slot[iii].en_exp = enemy[group[zzz,iii],9]; //Experience
        enemy_slot[iii].en_mor = enemy[group[zzz,iii],10];

        enemy_slot[iii].en_speed = enemy[group[zzz,iii],11]; //speed
        enemy_slot[iii].en_atk = enemy[group[zzz,iii],12];  //attack
        enemy_slot[iii].en_acc = enemy[group[zzz,iii],13];  //Accuracy
        enemy_slot[iii].en_crt = enemy[group[zzz,iii],14];  //critical        
        enemy_slot[iii].en_def = enemy[group[zzz,iii],15];
        enemy_slot[iii].en_eva = enemy[group[zzz,iii],16];
        enemy_slot[iii].en_mdef = enemy[group[zzz,iii],17];
        
        // 0 off, 1 on
        enemy_slot[iii].status_effect_slot[0] = false;
        enemy_slot[iii].status_effect_slot[1] = false;
        enemy_slot[iii].status_effect_slot[2] = false;
        enemy_slot[iii].status_effect_slot[3] = false;
        enemy_slot[iii].status_effect_slot[4] = false;
        enemy_slot[iii].status_effect_slot[5] = false;
        enemy_slot[iii].status_effect_slot[6] = false;
        enemy_slot[iii].status_effect_slot[7] = false;
        
        //SPECIAL
        enemy_slot[iii].en_items[1] = enemy[group[zzz,iii],18];
        enemy_slot[iii].en_items[2] = enemy[group[zzz,iii],19];
        enemy_slot[iii].en_equips[1] = enemy[group[zzz,iii],20];
        enemy_slot[iii].en_equips[2] = enemy[group[zzz,iii],21];
        
        enemy_slot[iii].en_satk = enemy[group[zzz,iii],22]; //Status Attack
        enemy_slot[iii].en_edef = enemy[group[zzz,iii],23]; //EDEF
        
        //Tactics
        enemy_slot[iii].en_tact_slot[1] = enemy[group[zzz,iii],26]; 
        enemy_slot[iii].en_tact_slot[2] = enemy[group[zzz,iii],27];
        enemy_slot[iii].en_tact_slot[3] = enemy[group[zzz,iii],28];
        enemy_slot[iii].en_tact_slot[4] = enemy[group[zzz,iii],29];

                
        
    }

}
//---------------------------------------------------------------------
//Set first strike/ambush

sup_init = (obj_main.level + obj_main.luck)/4;
sup_chance = global.group_suprise[zzz];
sup_rand = irandom_range(sup_init,100);

if (global.fight_boss == 0){
	sup_final = abs(sup_rand + sup_init - sup_chance);
} else {
	sup_final = 50	
}

if (sup_final <= 10) {
    //Ambushed
    battle_text[0] = "Ambushed by Enemies!";
    alarm[11] = 100;    
    ambush_flag = 2;    
    event_user(1);
        
} else if (sup_final >= 90) {
    //First Strike
    //battle_text[0] = "Chance to strike first";
    //alarm[11] = 100;
    mess_win_caller = "Chance to strike first";
    alarm[2] = 100;

    //boost run stat (luck to 100%)    
    obj_main.temp_stats[8] += 100;
     
    ambush_flag = 1;
    event_user(1);
      
    global.selector_active = 1;
    selector[1,0] = 1;
    selector[1,1] = 0;
    obj_main.can_act = 1;
    instance_create(20,180,obj_cursor);  //58/168
    obj_cursor.sprite_index = spr_cursor_battle;
    
} else if ((sup_final > 10) && (sup_final < 90)) {
    // regular battle
    ambush_flag = 0;    
    
    global.selector_active = 1;
    selector[1,0] = 1;
    selector[1,1] = 0;
    obj_main.can_act = 1;
    instance_create(20,180,obj_cursor);  //58/168
    obj_cursor.sprite_index = spr_cursor_battle;

}  

        