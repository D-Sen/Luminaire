//Level up

// Called From:
// obj_control_battle - End Step

if (obj_main.exper >= obj_main.exper_next ){
	audio_play_sound(snd_levelup, 7, false);
    
	obj_main.exper = 0;
    //obj_main.exper -= obj_main.exper_next; //Removes all exp gained up to next level(arbitrary)
    obj_main.exper_next += obj_main.exper_next * 1.5; //Exp needed for Next Level

    obj_main.level += 1; // Level
    obj_main.strength += irandom_range(2,4); // Strength
    obj_main.agility += irandom_range(2,4); // Agility
    obj_main.defense += irandom_range(2,4); //Defense
    obj_main.hp_max += irandom_range(15,30); //Max hit points
    obj_main.attack += irandom_range(2,4); //Attack
    obj_main.luck += irandom_range(4,4); //Luck
    obj_main.mdef += irandom_range(2,4); //Magic Def
    obj_main.int += irandom_range(2,4); //Intelligence
    //character_main[11] -= irandom(2); //Speed

    obj_control_battle.level_up = true;    
        
    switch(obj_main.level) {
        case(3): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 2;
        break;
        case(6): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 3;
        break;
        case(9): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 4;
        break;
        case(12): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 5;
        break;
        case(15): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 6;
        break;
        case(18): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 7;
        break;
        case(21): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 8;
        break;
        case(24): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 9;
        break;
        case(27): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 10;
        break;
        case(30): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 11;
        break;
        case(31): 
        obj_main.tactics_current_num += 1;
        obj_main.tactic_slot[obj_main.tactics_current_num] = 12;
        break;

	}
}

