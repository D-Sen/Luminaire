
if (react_trigger_on == true) {
    
    battle_steps_traveled = 0;
    battle_steps = 0;
    global.zone_fight = 0;
    alarm[0] = 10;
    react_trigger_on = false;
    
    // Change Region 2 to 3 or 3 to 2
    if (self.x == 928) && (self.y == 608){
        if (global.region_current == 2){
            global.region_current = 3;
        } else if (global.region_current == 3) {
            global.region_current = 2;
        }
    }
    // Change Region 4 to 5 or 5 to 4
    if (self.x == 1504) && (self.y == 1392)global.region_current = 5;
    if (self.x == 1584) && (self.y == 1392)global.region_current = 4;
    
}

