/// @description Check stats & Death
/// Player


// Remove statii
//For Positive stats
for(loop_statchk = 0;loop_statchk <= 3;loop_statchk+=1) {
    if (status[loop_statchk] == true) {
        if (irandom_range(0,150) <= int) status[loop_statchk] = false;                     
    }
}

loop_statchk = 0;
//For Negative stats
for(loop_statchk = 4;loop_statchk <= 7;loop_statchk+=1) {
    if (status[loop_statchk] == true) {
        if (irandom_range(0,150) <= mdef) status[loop_statchk] = false;                     
    }
}

// Act on Statii

//Regen
if ((status[0] == true) && (hp <= (hp_max - 5 )))  hp += round(5 * (int/5));
//Recharge
if (status[1] == true) tp += round(5 * (int/5));
//Virus
if (status[5] == true) hp -= floor(1 * (int/5));


//Player Death - Game over/restart
if (hp < 1){
    with (obj_main) instance_destroy();
    global.room_going_to = rm_main;
    instance_create(0,0,obj_fader);        
    if (instance_exists(obj_control_battle)) obj_control_battle.fight_over = 3;   
    global.zone_active = 4;
}      
  