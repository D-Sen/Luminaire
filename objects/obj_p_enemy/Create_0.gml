can_act = 0;


en_name = "Name"; //enemy[0,0] = "Enemy"; //Name 
en_level = 1; //enemy[0,1] = 1; //Level
en_atk = 0; //enemy[0,2] = 1; //atk
en_acc = 0; //enemy[0,3] = 1; //accuracy
en_crit = 0; //enemy[0,4] = 0; //Critical

en_def = 0; //enemy[0,15] = 1; //Defense
en_eva = 0; //enemy[0,16] = 1; //Agility

en_hp = 0; //enemy[0,5] = 100; //Hit Points
en_hpm = 0; //enemy[0,6] = 100; //Max Hit Points
en_tp = 0; //enemy[0,7] = 100; //Tactical Points
en_money = 0; //enemy[0,8] = 0; //Money
en_exp = 0; //enemy[0,9] = 0; //Experience
en_speed = 0; //enemy[0,10] = 0; //Fighting Gauge


en_mdef = 0; //enemy[0,17] = 0; //M. DEF
en_mor = 0; //enemy[0,18] = 0; //Morale
en_satk = 0; //enemy[0,19] = 0; //SATK Special status attack
//en_eatk = 0; //enemy[0,20] = 0; //EATK Element tied to special status attack

//en_resis = 0;//enemy[0,23] = 0; //Resist
en_tact = 0; //enemy[0,24] = 0; //Tactics


//------------------------------------------
// shader usage

//Flash color - which shader to use: 0 -white, 1 - red
flash_color = 0;

flash = false;

//Whether the effect (in total) is currently active
flash_flag = false;


