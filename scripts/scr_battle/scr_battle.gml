//Fighting Code
/*
//Called From:
// obj_main - Press Z
// scr_enemy_turn
//obj_control_battle - event(2)

//Arguments: 
// 0 -  Caller: 255 = Player, 0,1,2 = enemy slot #
// 1 -  Type of call: 1=Fight,2=Tactic,3=Item,4=run
// 2 -  Target: obj_control_battle.enemy_slot[number], player(255), obj_main.inventory[number,0]
// 3 -  Player: Equip ARM slot. 
        Enemy : Tactic slot #

//Variables
    stat = changed stat by scr_sh
    stat_hold = HP stat that gets held during stat_ch loop

BCH - Base Chance to Hit
CTH - Chance to hit
CRT - Critical chance
*/
// -------------------------------------------------------------------------------------------
{

    
    // ---------------------------------
    //Player : Attack
    if ((argument0 == 255) && (argument1 == 1)) {
        if (obj_main.can_act == 1){
            obj_main.can_act = 0;        
            
            //Check for Equipped Arm
            if (obj_main.equipped[argument3] == 0) {
                obj_control_battle.alarm[2] = 30;
                obj_control_battle.mess_win_caller = "No weapon equipped!";            
                exit;
            }
			
			if (!(instance_exists(obj_control_battle.enemy_slot[argument2]))) exit;

            //--------------------------------------------------        
            // Set up for visual/audio targetting 
            
            battle_text[0] = string(obj_main.name) + " attacks with " + string(equip[obj_main.equipped[argument3],1]);

            //--------------------------------------------------        
            
            critical_flag = false;
            damage = 0;
            
            //Accuracy Check
            Hita =  equip[obj_main.equipped[argument3],7] + (obj_main.hit + obj_main.temp_stats[10]);
            
            //Check Blind Status
            BCH = 168;
            if (obj_main.status[6] == true) {
                BCH -= 40;
            } else if (obj_control_battle.enemy_slot[argument2].status_effect_slot[6] == 1) {
                BCH += 40;
            }
            CTH = BCH + Hita - obj_control_battle.enemy_slot[argument2].en_eva
                
            if (irandom_range(0,200) > CTH) {
                damage = "Miss";
                obj_control_battle.battle_text[1] = "Missed!";
				audio_play_sound(snd_miss_player, 9, false);
                
            } else {
				audio_play_sound(equip[obj_main.equipped[argument3],15], 10, false);                           
            
                //Critical        
                CRT = equip[obj_main.equipped[argument3],6]
                if (irandom_range(0,200) <= CRT ) critical_flag = true;
                
                attack = equip[obj_main.equipped[argument3],5] + (obj_main.strength + obj_main.temp_stats[2])/2;
                
                if ( critical_flag == true){
					obj_control_battle.battle_text[1] = "Critical Hit!";
                    damage = ceil((irandom_range(attack,(attack*2))) + irandom_range(attack,(attack*2)) - obj_control_battle.enemy_slot[argument2].en_def);
                } else { 
					damage = ceil(attack - (obj_control_battle.enemy_slot[argument2].en_def / 3) * random_range(102,256) / 256);
                    //damage = irandom_range(attack,(attack*2)) - obj_control_battle.enemy_slot[argument2].en_def; 
                }
                                  
                if (sign(damage) == -1) { 
                    damage = 0;
                } else {
                    damage = damage * -1;
                }
				if (damage == 0) damage = -1;
				obj_main.tp += round(7 + (obj_main.strength / 5));
                
				//-------------------------------------------------
				// Audio/Visual
				
				obj_control_battle.enemy_slot[argument2].flash_color = 1;
				obj_control_battle.enemy_slot[argument2].flash_flag = true;
                obj_control_battle.enemy_slot[argument2].alarm[0] = 4;
                obj_control_battle.enemy_slot[argument2].alarm[2] = 20;
				
                obj_control_battle.enemy_slot[argument2].en_hp += damage;
                //--------------------------------------------------        
                //Status Effect
                
                if (equip[obj_main.equipped[argument3],11] != 0) {      
                    if (irandom_range(0,200) <= (BCH - obj_control_battle.enemy_slot[argument2].en_mdef)) {          
                        if (obj_control_battle.enemy_slot[argument2].status_effect_slot[equip[obj_main.equipped[argument3],11]] == false) {
                            obj_control_battle.enemy_slot[argument2].status_effect_slot[equip[obj_main.equipped[argument3],11]] = true;
                            obj_control_battle.battle_text[3] = obj_control_battle.enemy_slot[argument2].en_name + " gets : " + string(statii[equip[obj_main.equipped[argument3],11]]); 
                        }
                    }
                }
                
                //--------------------------------------------------                    
                //Successful damage & sound ....show dmg/effect on target  
                
                obj_control_battle.battle_text[2] = obj_control_battle.enemy_slot[argument2].en_name + " takes " + string(abs(damage)) + " damage.";
                audio_play_sound(snd_hurt2, 9, false);
                
            
            } //check miss
            scr_enemy_death(argument2);            
        }
    }

    //-------------------------------------
    //Player : Tactics
    
    //selector[1,1] is the enemy to target
    if ((argument0 == 255) && (argument1 == 2)) {
        if (obj_main.can_act == 1){        
            obj_main.can_act = 0;
            
            if (obj_main.status[4] == 1) { //silenced, was 12
                obj_control_battle.alarm[2] = 40;
                obj_control_battle.mess_win_caller = "Can't use tactics!";
                exit;
            }            
            
            obj_main.tp -= tactic[obj_main.tactic_slot[obj_main.selections_tactic],2];
            var stat_hold = 0;
            //--------------------------------------------------------
            //SOUND & SPRITE
            battle_text[0] = obj_main.name + " used " + tactic[obj_main.tactic_slot[obj_main.selections_tactic],1];
            audio_play_sound(tactic[obj_main.tactic_slot[obj_main.selections_tactic],14], 10, false);
                        
            //--------------------------------------------------------
                    
            if (tactic[obj_main.tactic_slot[obj_main.selections_tactic],11] == "tar_self"){
                for(iii=3;iii<10 ;iii+=2){
                    //var stat = scr_stat_ch("main","tactic",argument2,255,iii,0);
                    var stat = scr_stat_ch("main","tactic",argument2,255,iii,0);
                    if (stat != 0) var stat_hold = stat; 
                }                
                if (stat_hold > 0) battle_text[1] = string(obj_main.name) + " heals " + string(abs(stat_hold)) + " HP."
    
            } else if (tactic[obj_main.tactic_slot[obj_main.selections_tactic],11] == "tar_sin"){
                //var temp_tact_order_slot = attack_order[b_parts[2]];
                  if (instance_exists(obj_control_battle.enemy_slot[b_parts[2]]) ) {
                                  
                for(iii=3;iii<10 ;iii+=2){
                    //var stat = scr_stat_ch("enemy","tactic",argument2,selector[1,1],iii,0);
                    var stat = scr_stat_ch("main","tactic",obj_main.selections_tactic,b_parts[2],iii,0);
                    if (stat != 0) var stat_hold = stat;                 
                }                
                FXTEMPTWO = instance_create(obj_control_battle.enemy_slot[b_parts[2]].x,obj_control_battle.enemy_slot[b_parts[2]].y, obj_effect);
                FXTEMPTWO.sprite_index = tactic[obj_main.tactic_slot[obj_main.selections_tactic],15];   
                obj_control_battle.battle_text[1] = obj_control_battle.enemy_slot[argument2].en_name + " takes " + string(abs(stat_hold)) + " damage.";    
				  }
            } else if (tactic[obj_main.tactic_slot[obj_main.selections_tactic],11] == "tar_all"){              
                for(ggg=0;ggg<3;ggg+=1) {
                    if (instance_exists(obj_control_battle.enemy_slot[ggg]) ) {
                        for(iii=3;iii<10 ;iii+=2){
                            var stat = scr_stat_ch("main","tactic",argument2,ggg,iii,0);
                            if (stat != 0) var stat_hold = stat;       
                            //if ( stat != 0) obj_control_battle.target[ggg] = stat;
                          
                        }
                        FXTEMPTWO = instance_create(obj_control_battle.enemy_slot[ggg].x,obj_control_battle.enemy_slot[ggg].y, obj_effect);
                        FXTEMPTWO.sprite_index = tactic[obj_main.tactic_slot[obj_main.selections_tactic],15];
                        obj_control_battle.battle_text[ggg+1] = obj_control_battle.enemy_slot[ggg].en_name + " takes " + string(abs(stat_hold)) + " damage.";                        
                     
                    }                     
                }
            }
            for(iii=0;iii<3;iii+=1) { //6
                if (instance_exists(obj_control_battle.enemy_slot[iii])) scr_enemy_death(iii);            
            }
        }
    }
    
    //----------------------------------------------------
    //Player : Item
    if ((argument0 == 255) && (argument1 == 3)) {
        if (obj_main.can_act == 1){
            obj_main.can_act = 0;
    
            battle_text[0] = obj_main.name + " used '" + string(item[obj_main.inventory[argument2,0],1] + "'");
            audio_play_sound(snd_item, 10, false);
     
            //--------------------------------------------------                 
            for(iii=4;iii<11 ;iii+=2){
                scr_stat_ch("main","item",argument2,0,iii,0);
            }
        }
    }
    
    
    //----------------------------------------------------
    //Player : Run
    if ((argument0 == 255) && (argument1 == 4)) {
        if (obj_main.can_act == 1){
            obj_main.can_act = 0;
    
            if (global.group_run[obj_control_battle.zzz] == 1) {
                obj_control_battle.mess_win_caller = "Can't run!";
				obj_control_battle.alarm[2] = 40;
                exit; 
            }
            battle_text[0] = obj_main.name + " tried to run.";

            //Luck > 0...[Level + 15]   
            if ((obj_main.luck + obj_main.temp_stats[8]) > irandom_range(0,obj_main.level + 15)) {
                obj_control_battle.fight_over = 2;
                event_user(0);
                
            } else {
               //obj_control_battle.mess_win_caller = "Run failed!";
               battle_text[1] = "Run failed!";
            }           
         }   
    }
    
    //----------------------------------------------------
    //Enemy Action : tactic
        if ((argument0 != 255) && (argument1 == 2)) {
            if (obj_control_battle.enemy_slot[argument0].en_hp > 0) {
                if (obj_control_battle.enemy_slot[argument0].can_act == 1) {
                    obj_control_battle.enemy_slot[argument0].can_act = 0;
                    obj_control_battle.enemy_slot[argument0].en_tp -= tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],2];
                    
                    //obj_control_battle.alarm[7] = 30;
                    //obj_control_battle.mess_win_caller = obj_control_battle.enemy_slot[argument0].en_name + " : " + string(tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],1]);
                    
                    if (obj_main.hp <= 0) exit;
                    //--------------------------------------       
                    //SOUND & SPRITE
                    audio_play_sound(tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],14], 10, false);
                    
                    obj_control_battle.enemy_slot[argument0].flash_flag = true;
                    obj_control_battle.enemy_slot[argument0].alarm[0] = 4;
                    obj_control_battle.enemy_slot[argument0].alarm[2] = 20;
    
                    //-----------------------------------------                
                    
                    if (tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],11] == "tar_self"){
                        for(jjj=3;jjj<10;jjj+=2){
                            scr_stat_ch("enemy","tactic",obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],argument0,jjj,argument0);                        
                            FXTEMPTWO = instance_create(obj_control_battle.enemy_slot[argument0].x,obj_control_battle.enemy_slot[argument0].y, obj_effect);
                            FXTEMPTWO.sprite_index = tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],15];
                                 
                        }
                    } else { //tar_all,tar_single
                        for(jjj=3;jjj<10 ;jjj+=2){
                                //var statv = scr_stat_ch("enemy","tactic",obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],255,jjj,argument0);
                                scr_stat_ch("enemy","tactic",obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],255,jjj,argument0);
                                obj_control_battle.battle_text[1] = string(obj_main.name) + " is affected!";

                                /*
                                if (statv != 0) { 
                                obj_control_battle.enemy_slot[argument0].acting = statv;
                                obj_control_battle.enemy_slot[argument0].act_timer = 30;        
                                }
                                obj_control_battle.battle_text[1] = string(obj_main.name) + " is affected!";

                                III = instance_create(obj_main.x-8,obj_main.y-8, obj_effect);
                            III.sprite_index = tactic[obj_control_battle.enemy_slot[argument0].en_tact_slot[argument3],15]
                            */                                    
                            }
                    }        
                                            
                }
            }
            
           // if (obj_control_battle.enemy_slot[argument0].en_hp < 1) scr_enemy_death(argument0);
        }
    
    //----------------------------------------------------
    //Enemy Action : Fight
        if ((argument0 != 255) && (argument1 == 1)) {
            if (obj_control_battle.enemy_slot[argument0].en_hp > 0) {
                if (obj_control_battle.enemy_slot[argument0].can_act == 1) {
                    obj_control_battle.enemy_slot[argument0].can_act = 0;
                    // Do graphics flash
					obj_control_battle.enemy_slot[argument0].flash_color = 0;				
                    obj_control_battle.enemy_slot[argument0].flash_flag = true;
                    obj_control_battle.enemy_slot[argument0].alarm[0] = 4;
                    obj_control_battle.enemy_slot[argument0].alarm[2] = 20;
    
                    if (obj_main.hp <= 0) exit;
                            
                    
                    critical_flag = 0;
                    damage = 0;
                    
                    temp_armor_def1 = 0;
                    temp_armor_def2 = 0;
                    
                    temp_armor_wgt1 = 0;
                    temp_armor_wgt2 = 0;
    
                    defense = 0;
                    armor_weight = 0;
                    
                    if (obj_main.equipped[2] != 0) {
                        temp_armor_def1 = equip[obj_main.equipped[2],8];
                        temp_armor_wgt1 = equip[obj_main.equipped[2],9];
                    }
                    if (!( obj_main.equipped[3] == 0)) {
                        temp_armor_def2 = equip[obj_main.equipped[3],8];
                        temp_armor_wgt2 = equip[obj_main.equipped[3],9];
                    }
                    defense = temp_armor_def1+temp_armor_def2+obj_main.temp_stats[10] + obj_main.defense;
                    armor_weight = temp_armor_wgt1+temp_armor_wgt2;
                    
                    //---------------------------------------------        
                    
                    BCH = 168;
                    if (obj_control_battle.enemy_slot[argument0].status_effect_slot[6] == 1) { 
						BCH -= 40;
                    } else if (obj_main.status[6] == 1) { 
						BCH += 40; 
					}
                        
                    // characters evasion
                    evasion = 48 + (obj_main.agility + obj_main.temp_stats[11]) - armor_weight    
                    CTH = BCH + obj_control_battle.enemy_slot[argument0].en_acc - evasion;
                            
                    if (irandom_range(0,200) <= CTH ) {        
                        //continue;
                    } else { 
                        obj_control_battle.battle_text[1] = "Missed!";
						audio_play_sound(snd_miss_enemy, 9, false);
                
                        exit; 
                    }
                    
                    PCTC = (obj_control_battle.enemy_slot[argument0].en_crit + 1)/201;
                    if (irandom_range(0,200) <= PCTC ) critical_flag = 1; 
                    //--------------------------------------------- 
                    
                    if ( critical_flag == 1){
						obj_control_battle.battle_text[1] = "Critical Hit!";
                        damage = ceil(irandom_range(obj_control_battle.enemy_slot[argument0].en_atk,(obj_control_battle.enemy_slot[argument0].en_atk*2)) - defense/2); //obj_main.defense
                    } else { 
                        //damage = irandom_range(obj_control_battle.enemy_slot[argument0].en_atk,(obj_control_battle.enemy_slot[argument0].en_atk*2)) - defense; 
						
						damage = ceil(obj_control_battle.enemy_slot[argument0].en_atk - (defense / 3) * random_range(102,256) / 256);

                    }
            
                    //if (damage >= 0) { damage = (obj_control_battle.enemy_slot[argument0].en_atk/2)* -1;}                
                    //damage = ceil(damage);
					damage = damage * -1;
                //---------------------------------------------
        
                audio_play_sound(snd_hurt1, 10, false);
                
               
                //---------------------------------------------
                if (damage == 0) damage = -1;
                obj_main.hp += damage;
                obj_control_battle.battle_text[2] = string(obj_main.name) + + " takes " + string(abs(damage)) + " damage.";;
                obj_control_battle.enemy_slot[argument0].en_tp += 7;
            
            //-----------------------------------------------------
            //Status Effect
            
            if (obj_control_battle.enemy_slot[argument0].en_satk != 0) {
            
                //check for defense from armor
                if (equip[obj_main.equipped[2],12] == obj_control_battle.enemy_slot[argument0].en_satk) exit;
                if (equip[obj_main.equipped[3],12] == obj_control_battle.enemy_slot[argument0].en_satk) exit;    
            
                if (irandom_range(0,200) <= (BCH - obj_main.mdef + obj_main.temp_stats[12])) {
                    if (obj_main.status[obj_control_battle.enemy_slot[argument0].en_satk] == false) {
                        obj_main.status[obj_control_battle.enemy_slot[argument0].en_satk] = true;
                        obj_control_battle.battle_text[3] = string(obj_main.name) + " gets : " + string(statii[obj_control_battle.enemy_slot[argument0].en_satk]); 
    
                     }
                }
            }
            }
        }    
    }
}