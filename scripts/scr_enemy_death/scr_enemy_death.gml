//Runs through enemy inventory and places items into char main inv
// Adds money + exp from enemy to player
// Sets bosses permanent death
//Arg 0 - pointer to enemy number that died

//Called From:
// scr_battle

{
    var dead = false;  //is enemy dead?
    //------------------------------------------------------------
    // Check for death


    if (obj_control_battle.enemy_slot[argument0].en_hp < 1) {    
        for(ddd=0;ddd<4;ddd+=1){
            if (obj_control_battle.enemy_slot[argument0].id == obj_control_battle.attack_order[ddd]) obj_control_battle.attack_order[ddd] = noone;
        }
    } else {
        exit;
    }
    dead = true; 
    
    //------------------------------------------------------------

    if(obj_main.equipped[4] == 120) {
        obj_control_battle.eob_exp += floor(obj_control_battle.enemy_slot[argument0].en_exp * 1.7);
    } else {
        obj_control_battle.eob_exp += obj_control_battle.enemy_slot[argument0].en_exp;
    }
    if(obj_main.equipped[4] == 121) {
        obj_control_battle.eob_money += floor(obj_control_battle.enemy_slot[argument0].en_money * 1.8);
    } else {
        obj_control_battle.eob_money += obj_control_battle.enemy_slot[argument0].en_money;
    }
        
        
    //------------------------------------------------------------
    if (obj_main.items_current_num < 24) {
		/*
        if (irandom(2) == 1) {
            if (obj_control_battle.enemy_slot[argument0].en_items[1] == 0) exit; //break;
            scr_item_transfer(1, obj_control_battle.enemy_slot[argument0].en_items[1],1,1);
        }
        //------------------------------------------------------------
        
        if (irandom(10) == 1) {
            if (obj_control_battle.enemy_slot[argument0].en_items[2] == 0) exit; //break;
            scr_item_transfer(1, obj_control_battle.enemy_slot[argument0].en_items[2],1,1);
        }         
         */
        
        //------------------------------------------------------------
        // EQUIPMENT
        
        if (irandom(2) == 1) {
            if (obj_control_battle.enemy_slot[argument0].en_equips[1] == 0) exit; //break;    
            scr_item_transfer(1, obj_control_battle.enemy_slot[argument0].en_equips[1],1,2);
        }
        //------------------------------------------------------------ 
        if (irandom(5) == 1) {
            if (obj_control_battle.enemy_slot[argument0].en_equips[2] == 0) exit; //break;
            scr_item_transfer(1, obj_control_battle.enemy_slot[argument0].en_equips[2],1,2);
        }
    }
    //------------------------------------------------------------ 
    // BOSS
    if ((global.fight_boss == 1) && (obj_control_battle.enemy_slot[argument0].en_hp <= 0)){
    
        if (obj_control_battle.zzz == 20) { boss_dead[1] = 1;
        } else if (obj_control_battle.zzz == 21) { boss_dead[2] = 1;
        } else if (obj_control_battle.zzz == 22) { boss_dead[3] = 1;
        } else if (obj_control_battle.zzz == 23) { boss_dead[4] = 1;
        } else if (obj_control_battle.zzz == 24) { boss_dead[5] = 1;
        } else if (obj_control_battle.zzz == 25) { boss_dead[6] = 1;
        } else if (obj_control_battle.zzz == 26) { boss_dead[7] = 1;
        } else if (obj_control_battle.zzz == 27) { boss_dead[8] = 1;
        }
        
        
        //global.fight_boss = 0;
        //global.fight_boss_region = 0;
        //global.fight_boss_group = 0;
    }
    EEE = instance_create(obj_control_battle.enemy_slot[argument0].x,obj_control_battle.enemy_slot[argument0].y, obj_effect);
    EEE.sprite_index = spr_fx_rou;
    EEE.image_speed = .3;
    
    with (obj_control_battle.enemy_slot[argument0]) instance_destroy();
    obj_control_battle.enemy_number -= 1;
    obj_control_battle.enemy_slot[argument0] = noone;
    
    return(dead);
    
}