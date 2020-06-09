//--------------------------------


//Starts a Random battle when battle_flag =  battle_steps
battle_flag = 0;

//Steps taken so far for comparison to battle_flag (checks against battle_flag)
battle_steps = 0;

//Distance traveled for constant movement. 32 = 1 battle_step
battle_steps_traveled = 0;

//--------------------------------
// Player locals

// Whether player can have control..Fighting Only
can_act = 1;

//Tactic selection made
selections_tactic = 0;

//--------------------------------
// Battle

//temp stats = Temporary stat modifcation used during battle instead of changing players hard stats. 
//Will be added to each reference to a stat (REAL_STAT + TEMP_STAT) [reduction of stat represented by negative (-)]
//Set to 0 after fight ends
temp_stats[13] = 0;

//--------------------------------
// movement


target_x = x;
target_y = y;
moving = false;
image_speed = 0;
//--------------------------------
// Lines transition

next_room = noone;
kind = transition.stripe_hor;
xx = -1;
yy = -1;


//--------------------------------
// Others

//easy x/y is used to set obj_main xy and have obj_main moved only AFTER the room change. 
//Checked during event "Room Change"
using_easyxy = false;
easyx = 0;
easyy = 0;

//-----------------------------------------------------------------
// NEW STUFF 3/26/2020
tactics_current_num = 0;
obj_main.tactic_slot[1] = 1;


// Mains' Total Items
items_current_num = 0;

for(inv_loop = 0; inv_loop < 24; inv_loop +=1){
	inventory[inv_loop,0] = 0;
	inventory[inv_loop,1] = 0;
	inventory[inv_loop,2] = 0;
}

/*
inventory[0,0] = 0;
inventory[0,1] = 0;
inventory[0,2] = 0;

inventory[1,0] = 0;
inventory[1,1] = 0;
inventory[1,2] = 0;

inventory[2,0] = 0;
inventory[2,1] = 0;
inventory[2,2] = 0;

inventory[3,0] = 0;
inventory[3,1] = 0;
inventory[3,2] = 0;

inventory[4,0] = 0;
inventory[4,1] = 0;
inventory[4,2] = 0;

inventory[5,0] = 0;
inventory[5,1] = 0;
inventory[5,2] = 0;

inventory[6,0] = 0;
inventory[6,1] = 0;
inventory[6,2] = 0;

inventory[7,0] = 0;
inventory[7,1] = 0;
inventory[7,2] = 0;

inventory[8,0] = 0;
inventory[8,1] = 0;
inventory[8,2] = 0;

inventory[9,0] = 0;
inventory[9,1] = 0;
inventory[9,2] = 0;

inventory[10,0] = 0;
inventory[10,1] = 0;
inventory[10,2] = 0;

inventory[11,0] = 0;
inventory[11,1] = 0;
inventory[11,2] = 0;

inventory[12,0] = 0;
inventory[12,1] = 0;
inventory[12,2] = 0;

inventory[13,0] = 0;
inventory[13,1] = 0;
inventory[13,2] = 0;

inventory[14,0] = 0;
inventory[14,1] = 0;
inventory[14,2] = 0;

inventory[15,0] = 0;
inventory[15,1] = 0;
inventory[15,2] = 0;

inventory[16,0] = 0;
inventory[16,1] = 0;
inventory[16,2] = 0;


inventory[17,0] = 0;
inventory[17,1] = 0;
inventory[17,2] = 0;

inventory[18,0] = 0;
inventory[18,1] = 0;
inventory[18,2] = 0;

inventory[19,0] = 0;
inventory[19,1] = 0;
inventory[19,2] = 0;

inventory[20,0] = 0;
inventory[20,1] = 0;
inventory[20,2] = 0;
*/

inventory[1,0] = 3;
inventory[1,1] = 1;
inventory[1,2] = 2;

inventory[2,0] = 111;
inventory[2,1] = 1;
inventory[2,2] = 2;

inventory[3,0] = 101;
inventory[3,1] = 1;
inventory[3,2] = 2;

inventory[4,0] = 1;
inventory[4,1] = 3;
inventory[4,2] = 1;

/*
inventory[1,0] = 122;
inventory[1,1] = 1;
inventory[1,2] = 2;

inventory[2,0] = 2;
inventory[2,1] = 15;
inventory[2,2] = 1;

inventory[3,0] = 8;
inventory[3,1] = 1;
inventory[3,2] = 1;

inventory[4,0] = 9;
inventory[4,1] = 1;
inventory[4,2] = 1;

inventory[5,0] = 101;
inventory[5,1] = 1;
inventory[5,2] = 2;

inventory[6,0] = 3;
inventory[6,1] = 1;
inventory[6,2] = 2;

inventory[7,0] = 2;
inventory[7,1] = 1;
inventory[7,2] = 2;

inventory[8,0] = 104;
inventory[8,1] = 1;
inventory[8,2] = 2;

inventory[9,0] = 4;
inventory[9,1] = 2;
inventory[9,2] = 2;

inventory[10,0] = 5;
inventory[10,1] = 1;
inventory[10,2] = 2;

inventory[11,0] = 6;
inventory[11,1] = 5;
inventory[11,2] = 2;

inventory[12,0] = 7;
inventory[12,1] = 1;
inventory[12,2] = 2;

inventory[13,0] = 8;
inventory[13,1] = 10;
inventory[13,2] = 2;

inventory[14,0] = 9;
inventory[14,1] = 1;
inventory[14,2] = 2;

inventory[15,0] = 10;
inventory[15,1] = 1;
inventory[15,2] = 2;

inventory[16,0] = 113;
inventory[16,1] = 1;
inventory[16,2] = 2;


inventory[17,0] = 114;
inventory[17,1] = 1;
inventory[17,2] = 2;

inventory[18,0] = 120;
inventory[18,1] = 1;
inventory[18,2] = 2;

inventory[19,0] = 121;
inventory[19,1] = 1;
inventory[19,2] = 2;

inventory[20,0] = 6;
inventory[20,1] = 1;
inventory[20,2] = 1;

inventory[21,0] = 6;
inventory[21,1] = 1;
inventory[21,2] = 1;

inventory[22,0] = 6;
inventory[22,1] = 1;
inventory[22,2] = 1;

inventory[23,0] = 8;
inventory[23,1] = 1;
inventory[23,2] = 1;

inventory[24,0] = 111;
inventory[24,1] = 1;
inventory[24,2] = 2;
*/

tactics_current_num = 1;
items_current_num = 4;



globalvar character_main;
name = "Rhayi";
level = 1;
strength = 5;
agility = 5;
defense = 5;
hp = 120; //Hit Points
hp_max = 120; //Max Hit Points
tp = 100; //Tactical Points
money = 100;
exper = 0; //Experience
exper_next = 100; //Exp needed for Next Level
fight_speed = 10; //Speed

luck = 5; //LCK = Luck. Increases chance to run
attack = 5; //ATK = Attack ("Damage" in original)
hit = 7; //HIT%= Hit %. Increases Accuracy
//character_main[15] = 5; //EVA%= Evade %. Chance to avoid attacks.
mdef = 15; //MD  = Magic Defense. Chance to avoid magic attacks. This stat is hidden.
int = 15; //INT = Intelligence. Magic Power


status[0] = false;
status[1] = false;
status[2] = false;
status[3] = false;
status[4] = false;
status[5] = false;
status[6] = false;
status[7] = false;

equipped[0] = 0; //Arm Unit1
equipped[1] = 0; //Arm Unit2
equipped[2] = 0; //Head Unit
equipped[3] = 0; //Body Unit
equipped[4] = 0; //Accessory

equipped[0] = 3; //Arm Unit1
equipped[1] = 3; //Arm Unit2
equipped[2] = 111; //Head Unit
equipped[3] = 101; //Body Unit