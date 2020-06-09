//Called From:
// scr_battle

// Checks each tactic or item for its effect on intended target 
// Argument0 = User type - string: main or enemy
// Argument1 = item or tactic - string
// Argument2 = which item or tactic in slot(id number)
// Argument3 = Target - int : if enemy is target, which one in enemy slot to target[player = 255]
// argument4 = variable from "for" loop - int
// argument5 = enemy id. Only needed if enemy using tactic on main. '0' if null.
{
    if (argument0 == "main") {
       
        //------------------------------------
        //Main : Using item on self
        if (argument1 == "item") {
            TEMP = item[obj_main.inventory[argument2,0],argument4];
            if (TEMP = "null") exit;

            if (string_letters(TEMP) == "REMOVE"){
				obj_main.status[item[obj_main.inventory[argument2,0],argument4+1]] = false;
            }

            
            switch (TEMP){
                 case ("HP"):
                    obj_main.hp += item[obj_main.inventory[argument2,0],argument4+1]; 
                    if (obj_main.hp > obj_main.hp_max) obj_main.hp = obj_main.hp_max; 
                    break;  
                 case ("TP"):
                    obj_main.tp += item[obj_main.inventory[argument2,0],argument4+1]; break;
                 case("STR"):
                    obj_main.temp_stats[2] += item[obj_main.inventory[argument2,0],argument4+1]; 
                    if (obj_main.strength + obj_main.temp_stats[2] < 1) obj_main.strength = 1;
                    break;
                 case("AGI"):
                    obj_main.temp_stats[3] += item[obj_main.inventory[argument2,0],argument4+1]; 
                    if (obj_main.agility + obj_main.temp_stats[3] < 1) obj_main.agility = 1;
                    break;
                 case("DEF"):
                    obj_main.temp_stats[4] += item[obj_main.inventory[argument2,0],argument4+1]; 
                    if (obj_main.defense + obj_main.temp_stats[4] < 1) obj_main.defense = 1;
                    break;
                 case("LCK"):
                    obj_main.temp_stats[8] += item[obj_main.inventory[argument2,0],argument4+1];
                    if (obj_main.luck + obj_main.temp_stats[8] < 1) obj_main.luck = 1;
                    break;
                case("ATK"):
                    obj_main.temp_stats[9] += item[obj_main.inventory[argument2,0],argument4+1]; 
                    if (obj_main.attack + obj_main.temp_stats[9] < 1) obj_main.attack = 1;
                    break;
                case("HIT"):
                    obj_main.temp_stats[10] += item[obj_main.inventory[argument2,0],argument4+1];
                    if (obj_main.hit + obj_main.temp_stats[10] < 1) obj_main.hit = 1;
                    break;
                //case("EVA"):
                  //  obj_main.temp_stats[11] += item[obj_main.inventory[argument2,0],argument4+1];
                    //if (obj_main[15] + obj_main.temp_stats[11] < 1) obj_main[15] = 1;
                    //break;
                case("MD"):
                    obj_main.temp_stats[12] += item[obj_main.inventory[argument2,0],argument4+1];
                    if (obj_main.mdef + obj_main.temp_stats[12] < 1) obj_main.mdef = 1;
                    break;
                case("INT"):
                    obj_main.temp_stats[13] += item[obj_main.inventory[argument2,0],argument4+1];
                    if (obj_main.int + obj_main.temp_stats[13] < 1) obj_main.int = 1;
                    break;
                case("STATUS"):
                    obj_main.status[item[obj_main.inventory[argument2,0],argument4+1]] = true; 
                    break;
              }
            if (TEMP == "HP") return(item[obj_main.inventory[argument2,0],argument4+1]);
            
            
        //------------------------------------       
        //Main : Using tactic on self
        } else if ((argument1 == "tactic") && (argument3 == 255)){
            TEMP = tactic[obj_main.tactic_slot[argument2],argument4]
            if (TEMP == "null") exit; //break;
            
            //If not status, get Damage is change number        
            if (!(TEMP = "STATUS")) change = round(irandom_range(obj_main.int + tactic[obj_main.tactic_slot[argument2],argument4+1],2*(tactic[obj_main.tactic_slot[argument2],argument4+1])));

            if (string_letters(TEMP) == "REMOVE"){
                //character_main_statii[real(string_digits(TEMP))] = false;
                //character_main_statii[tactic[obj_main.tactic_slot[argument2],argument4+1]] = false;
				//obj_main_statii[real(string_digits(TEMP))] = false;
				obj_main.status[tactic[obj_main.tactic_slot[argument2],argument4+1]] = false;
                
            }
            
            
            switch (TEMP){
                 case ("HP"):
                    obj_main.hp += change; 
                    if (obj_main.hp > obj_main.hp_max) obj_main.hp = obj_main.hp_max;
                    break;  
                 case ("TP"):
                    obj_main.tp += change; break;
                 case("STR"):
                    obj_main.temp_stats[2] += change;
                    if (obj_main.strength + obj_main.temp_stats[2] < 1) obj_main.strength = 1;
                    break;
                 case("AGI"):
                    obj_main.temp_stats[3] += change;     
                    if (obj_main.agility + obj_main.temp_stats[3] < 1) obj_main.agility = 1;
                    break;
                 case("DEF"):
                    obj_main.temp_stats[4] += change;
                    if (obj_main.defense + obj_main.temp_stats[4] < 1) obj_main.defense = 1;
                    break;
                 case("LCK"):
                    obj_main.temp_stats[8] += change;
                    if (obj_main.luck + obj_main.temp_stats[8] < 1) obj_main.luck = 1;
                    break;
                 case("ATK"):
                    obj_main.temp_stats[9] += change;
                    if (obj_main.attack + obj_main.temp_stats[9] < 1) obj_main.attack = 1;
                    break;
                 case("HIT"):
                    obj_main.temp_stats[10] += change;
                    if (obj_main.hit + obj_main.temp_stats[10] < 1) obj_main.hit = 1;
                    break;
                 //case("EVA"):
                   // obj_main.temp_stats[11] += change;
                    //if (obj_main[15] + obj_main.temp_stats[11] < 1) obj_main[15] = 1;
                    //break;
                 case("MD"):
                    obj_main.temp_stats[12] += change;
                    if (obj_main.mdef + obj_main.temp_stats[12] < 1) obj_main.mdef = 1;
                    break;
                 case("INT"):
                    obj_main.temp_stats[13] += change;
                    if (obj_main.int + obj_main.temp_stats[13] < 1) obj_main.int = 1;
                    break;
                 case("STATUS"):
                    obj_main.status[tactic[obj_main.tactic_slot[argument2],argument4+1]] = true; break;
                 }  
            if (TEMP == "HP") return(change);

    //---------------------------------------    
    //Main : Using tactic on enemy    
    } else if ((argument1 == "tactic") && (argument3 < 255)) {
        TEMP = tactic[obj_main.tactic_slot[argument2],argument4];
          
        if (TEMP == "null") exit; //break;

        //Damage is change number        
       if (!(TEMP = "STATUS")) {
        change = round(irandom_range(tactic[obj_main.tactic_slot[argument2],argument4+1],2*(tactic[obj_main.tactic_slot[argument2],argument4+1])));
        //change = (character_main[17] - enemy_slot[argument3].en_mdef) + change
        //if (change < 0) change = 0;
		change = (obj_main.int - enemy_slot[argument3].en_mdef) + change
            if (change > 0) change = change * -1;
       }
            
            switch (TEMP){
                 case ("HP"):
                    obj_control_battle.enemy_slot[argument3].en_hp += change; break;  
                 case ("TP"):
                    obj_control_battle.enemy_slot[argument3].en_tp += change; 
					if (obj_control_battle.enemy_slot[argument3].en_tp <= 0) obj_control_battle.enemy_slot[argument3].en_tp = 0;
					break;
                 case("STR"):
                    obj_control_battle.enemy_slot[argument3].en_crt += change;
                    if (obj_control_battle.enemy_slot[argument3].en_crt < 0) obj_control_battle.enemy_slot[argument3].en_crt = 0;
                    break;
                 case("DEF"):
                    obj_control_battle.enemy_slot[argument3].en_def += change;
                    if (obj_control_battle.enemy_slot[argument3].en_def < 0) obj_control_battle.enemy_slot[argument3].en_def = 0;
                    break;
                 case("LCK"):
                    obj_control_battle.enemy_slot[argument3].en_mor += change;
                    if (obj_control_battle.enemy_slot[argument3].en_mor < 0) obj_control_battle.enemy_slot[argument3].en_mor = 0;
                    break;
                 case("ATK"):
                    obj_control_battle.enemy_slot[argument3].en_atk += change;
                    if (obj_control_battle.enemy_slot[argument3].en_atk < 0) obj_control_battle.enemy_slot[argument3].en_atk = 0;
                    break;
                 case("HIT"):
                    obj_control_battle.enemy_slot[argument3].en_acc += change;
                    if (obj_control_battle.enemy_slot[argument3].en_acc < 0) obj_control_battle.enemy_slot[argument3].en_acc = 0;
                    break;
                 case("EVA"):
                    obj_control_battle.enemy_slot[argument3].en_eva += change;
                    if (obj_control_battle.enemy_slot[argument3].en_eva < 0) obj_control_battle.enemy_slot[argument3].en_eva = 0;
                    break;
                 case("MD"):
                    obj_control_battle.enemy_slot[argument3].en_mdef += change;
                    if (obj_control_battle.enemy_slot[argument3].en_mdef < 0) obj_control_battle.enemy_slot[argument3].en_mdef = 0;
                    break;
                case("STATUS"):
                    BC = 148;
                    CTH = BC + tactic[obj_main.tactic_slot[obj_main.selections_tactic],13] - obj_control_battle.enemy_slot[argument3].en_mdef;
                    if (!(random_range(0,200) <= CTH)) exit;
                    obj_control_battle.enemy_slot[argument3].status_effect_slot[tactic[obj_main.tactic_slot[argument2],argument4+1]] = true; 
                    break;
            }
            if (TEMP == "HP") return(change);
  
        }
    }
//----------------------------------------------------------------------
// Enemy

    if (argument0 == "enemy") {
         //------------------------------------
        /// Enemy: using tactic on main        
        if ((argument1 == "tactic") && (argument3 == 255)) {                                        

            TEMP = tactic[argument2,argument4];
            if (TEMP == "null") exit; //break;

            //Damage is change number        
            if (!(TEMP = "STATUS")) {
                change = round(irandom_range(tactic[argument2,argument4+1],2*(tactic[argument2,argument4+1])));
                change = (enemy_slot[argument5].en_mdef - obj_main.int) + change
                //if (change < 0) change = 0;
                if (change > 0) change = change * -1;
            }
            
            switch (TEMP){
                 case ("HP"):
                    obj_main.hp += change; 
                    if (obj_main.hp > obj_main.hp_max) obj_main.hp = obj_main.hp_max;
                    break;  
                 case ("TP"):
                    obj_main.tp += change; 
					if (obj_main.tp < 0) obj_main.tp = 0;
					break;
                 case("STR"):
                    obj_main.temp_stats[2] += change;
                    if (obj_main.strength + obj_main.temp_stats[2] < 1) obj_main.strength = 1;
                    break;
                 case("AGI"):
                    obj_main.temp_stats[3] += change;     
                    if (obj_main.agility + obj_main.temp_stats[3] < 1) obj_main.agility = 1;
                    break;
                 case("DEF"):
                    obj_main.temp_stats[4] += change;
                    if (obj_main.defense + obj_main.temp_stats[4] < 1) obj_main.defense = 1;
                    break;
                 case("LCK"):
                    obj_main.temp_stats[8] += change;
                    if (obj_main.luck + obj_main.temp_stats[8] < 1) obj_main.luck = 1;
                    break;
                 case("ATK"):
                    obj_main.temp_stats[9] += change;
                    if (obj_main.attack + obj_main.temp_stats[9] < 1) obj_main.attack = 1;
                    break;
                 case("HIT"):
                    obj_main.temp_stats[10] += change;
                    if (obj_main.hit + obj_main.temp_stats[10] < 1) obj_main.hit = 1;
                    break;
                 //case("EVA"):
                    //obj_main.temp_stats[11] += change;
                    //if (obj_main[15] + obj_main.temp_stats[11] < 1) obj_main[15] = 1;
                    //break;
                 case("MD"):
                    obj_main.temp_stats[12] += change;
                    if (obj_main.mdef + obj_main.temp_stats[12] < 1) obj_main.mdef = 1;
                    break;
                 case("INT"):
                    obj_main.temp_stats[13] += change;
                    if (obj_main.int + obj_main.temp_stats[13] < 1) obj_main.int = 1;
                    break;
                 case("STATUS"):
                    BC = 148;
                    CTH = BC + tactic[argument2,13] - (obj_main.mdef + obj_main.temp_stats[12]);
                    if (!(random_range(0,200) <= CTH)) exit;
                    obj_main.status[tactic[argument2,argument4+1]] = true; 
                    break;
                
            }  
            if (TEMP == "HP") return(change); 

            
    //---------------------------------------    
    //Enemy : Using tactic on its self            
    
    } else  if ((argument1 == "tactic") && (argument3 < 255)) {
         TEMP = tactic[argument2,argument4];
            if (TEMP == "null") exit; //break;
            
			if (string_letters(TEMP) == "REMOVE"){
                //obj_control_battle.enemy_slot[argument3].status_effect_slot[real(string_digits(TEMP))] = false;
				obj_control_battle.enemy_slot[argument3].status_effect_slot[tactic[argument2,argument4+1]] = false;
				
            }
			
            if (!(TEMP = "STATUS")) change = round(irandom_range(obj_control_battle.enemy_slot[argument3].en_mdef+tactic[argument2,argument4+1],2*(tactic[argument2,argument4+1])));

            
            
            
            switch (TEMP){
                 case ("HP"):
                    obj_control_battle.enemy_slot[argument3].en_hp += change;  
                    if (obj_control_battle.enemy_slot[argument3].en_hp > obj_control_battle.enemy_slot[argument3].en_hpm) obj_control_battle.enemy_slot[argument3].en_hp = obj_control_battle.enemy_slot[argument3].en_hpm;
                    break;
                 case ("TP"):
                    obj_control_battle.enemy_slot[argument3].en_tp += change; 
					if (obj_control_battle.enemy_slot[argument3].en_tp < 0) obj_control_battle.enemy_slot[argument3].en_tp = 0; 
										
					break;
                 case("STR"):
                    obj_control_battle.enemy_slot[argument3].en_crt += change;
                    if (obj_control_battle.enemy_slot[argument3].en_crt < 0) obj_control_battle.enemy_slot[argument3].en_crt = 0;
                    break;
                 case("DEF"):
                    obj_control_battle.enemy_slot[argument3].en_def += change;
                    if (obj_control_battle.enemy_slot[argument3].en_def < 0) obj_control_battle.enemy_slot[argument3].en_def = 0;
                    break;
                 case("LCK"):
                    obj_control_battle.enemy_slot[argument3].en_mor += change;
                    if (obj_control_battle.enemy_slot[argument3].en_mor < 0) obj_control_battle.enemy_slot[argument3].en_mor = 0;
                    break;
                 case("ATK"):
                    obj_control_battle.enemy_slot[argument3].en_atk += change;
                    if (obj_control_battle.enemy_slot[argument3].en_atk < 0) obj_control_battle.enemy_slot[argument3].en_atk = 0;
                    break;
                 case("HIT"):
                    obj_control_battle.enemy_slot[argument3].en_acc += change;
                    if (obj_control_battle.enemy_slot[argument3].en_acc < 0) obj_control_battle.enemy_slot[argument3].en_acc = 0;
                    break;
                 case("EVA"):
                    obj_control_battle.enemy_slot[argument3].en_eva += change;
                    if (obj_control_battle.enemy_slot[argument3].en_eva < 0) obj_control_battle.enemy_slot[argument3].en_eva = 0;
                    break;
                 case("MD"):
                    obj_control_battle.enemy_slot[argument3].en_mdef += change;
                    if (obj_control_battle.enemy_slot[argument3].en_mdef < 0) obj_control_battle.enemy_slot[argument3].en_mdef = 0;
                    break;     
                 case("STATUS"):
                    obj_control_battle.enemy_slot[argument3].status_effect_slot[tactic[argument2,argument4+1]] = true; 
                    break;
            }  
        }  
        if (TEMP == "HP") return(change);
 
    }
} //End of script


