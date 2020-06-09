/// @description check status
// You can write your code in this editor



//-----------------------------------------------------
// Fight Over 1 - Calculate exp/money, reset selection variables
// Executes when player kills enemies

if ( instance_exists(obj_p_enemy) == false)   {
    if (fight_over == 0) {
    
        ds_priority_destroy(pr_queue);
           
        obj_main.money += eob_money;
        obj_main.exper += eob_exp;
        
        if (obj_main.hp > obj_main.hp_max) obj_main.hp = obj_main.hp_max;
                
        obj_main.can_act = 0;          
        selector[1,0] = 0;
        selector[1,1] = 0;
        if ( instance_exists(obj_cursor) == true) with (obj_cursor) instance_destroy();    
        global.selector_active = 0;
    
        scr_levelup();
        fight_over = 1;
    }                
}


//-----------------------------------------------------
// Fight Over 2 - Reset temp stats, Remove battle-only status effects, start room transition, clears boss variables
// Executes when player kills enemies, or when player successfully runs

if (fight_over == 2) {
    
    //Statii Removed - See list in scr_init
    obj_main.status[0] = 0;
    obj_main.status[2] = 0;
    obj_main.status[3] = 0;
   
    
    for (fff=1;fff < 13;fff+=1){
        temp_stats[fff] = 0;
    }

    global.room_going_to = global.last_room;;
    instance_create(0,0,obj_fader);        
            
    eob_money = 0; 
    eob_exp = 0;
            
    global.zone_active = 0;    
    
    obj_main.x = global.main_lastx;
    obj_main.y = global.main_lasty;
    
    //Boss
    global.fight_boss = 0;
    global.fight_boss_group = 0;
    global.fight_boss_region = 0;

}

