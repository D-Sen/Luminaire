//---------------------------------------------
//Game Variables

//--------------------
// Areas

/*
// The 'zone' that is currently active 
0 - Regular walking area 
1 - Pause 
2 - Battle 
3 - Start Screen 
4 - Game Over 
5 - Game Load - UNUSED
6 - Story Mode
7 - Story Mode special (for having clean transitions)
8 - Manual Screen
9 - Credits screen
10 - Game End
*/
global.zone_active = 0;
 
// Battle can happen in current  room: 0 - No, 1 - Yes
global.zone_fight = 1;

// The Worldmap/Room 'region' you are currently in.
global.region_current = 1;


// FightArea Type - The fight room that you will be fighting in
room_fight = rm_fight1;


// For use with fader object
global.room_going_to = rm_fight1;

global.playcontrol_one = 255;

//--------------------------------------------
// Story (global.zone_active = 6;)

//array - story_text[story_flag,story_advancer]

//Current iterator for story section - works with story_text[x,n]
global.story_flag = 1;

//input story advancing, reset to 0 after each story chunk
global.story_advancer = 0;

//---------------------------------------------
// Selection

// Type of control input. 0 =selector not active, 1 = selector active
global.selector_active = 0;


// Selector : 0,x = Not Active
// [x,1] item in list selector is pointing to
//For selection purposes,also doubles as control type
//Main Menu
//Options menu
//Load screen
//Overworld
//Battle & lists
//Pause Screen



globalvar selector;
selector[0,0] = 0;
selector[0,1] = 0;

// Battle 
// [1,0] 1 = main action (fight) menu, 2 = item/tactic submenu.

//main menu
selector[1,0] = 0;
selector[1,1] = 0;

// Pause
selector[2,0] = 0;
selector[2,1] = 0;



// Whether the game is 'ticking', used for pausing
global.deactivated = 0; 

//Page - current 'page' while showing item/tactic lists
page = 0;

//Caller - used in refercing previous GUI selections
caller = 0; 

//Used to display temporary message at the top of the screen
mess_win_caller = 0;

//Special for showing multiple pages of the manual
page_manual = 0;

//Special for showing multiple pages of the ending text
page_ending = 1;
//---------------------------------------------
// Fight - special

        
//Fight Boss
// Called during obj_control_battle - create
// 'bosses' array in scr_init_enemy

//whether battle is a boss fight or not
global.fight_boss = 0;

//region for boss fight (8 or 9)
global.fight_boss_region =0;

//group for boss fight (20-27)
global.fight_boss_group =0;

// 0 = alive, 1 = dead
globalvar boss_dead;
boss_dead[1] = 0;
boss_dead[2] = 0;
boss_dead[3] = 0;
boss_dead[4] = 0;
boss_dead[5] = 0;
boss_dead[6] = 0;
boss_dead[7] = 0;
boss_dead[8] = 0;
// [1] - redmnt
// [2] - orania
// [3] - bridge
// [4] - perique
// [5] - fact 1
// [6] - fact 2
// [7] - Attendent
// [8] - Final Boss

//---------------------------------------------
// NPC

//npc_acting - Whether an npc is interacting with main, usually talking
// 0 = No, 1 = Yes
global.npc_acting = 0;

//NPC Calling - The ID# of the npc that is currently acting
global.npc_calling = 0;

//NPC Caller - last selection made at NPC off of a list
global.npc_caller = 0;


//---------------------------------------------
// Main



//Last x/y of main before a room switch
global.main_lastx = 0;
global.main_lasty = 0;
global.last_room = rm_main;

// Tactics
// Mains' Total Tactics
// Number of slots for tactics to go in
//obj_main.tactics_current_num = 0;



// Mains' Total Items
//obj_main.items_current_num = 0;

/*
globalvar character_main;
character_main[0] = "Proto"; //Name 
character_main[1] = 1; //Level
character_main[2] = 5; //Strength
character_main[3] = 5; //Agility
character_main[4] = 5; //Defense
character_main[5] = 50; //Hit Points
character_main[6] = 50; //Max Hit Points
character_main[7] = 100; //Tactical Points
character_main[8] = 100; //Money
character_main[9] = 0; //Experience
character_main[10] = 100; //Exp needed for Next Level
character_main[11] = 100; //Fighting Gauge - cant change from 100

character_main[12] = 5; //LCK = Luck. Increases chance to run
character_main[13] = 5; //ATK = Attack ("Damage" in original)
character_main[14] = 7; //HIT%= Hit %. Increases Accuracy
//character_main[15] = 5; //EVA%= Evade %. Chance to avoid attacks.
character_main[16] = 5; //MD  = Magic Defense. Chance to avoid magic attacks. This stat is hidden.
character_main[17] = 5; //INT = Intelligence. 


globalvar character_main_statii;
character_main_statii[0] = false;
character_main_statii[1] = false;
character_main_statii[2] = false;
character_main_statii[3] = false;
character_main_statii[4] = false;
character_main_statii[5] = false;
character_main_statii[6] = false;
character_main_statii[7] = false;



globalvar obj_main.equipped;
obj_main.equipped[0] = 0; //Arm Unit1
obj_main.equipped[1] = 0; //Arm Unit2
obj_main.equipped[2] = 0; //Head Unit
obj_main.equipped[3] = 0; //Body Unit
obj_main.equipped[4] = 0; //Accessory
*/
//------------------------------------------
// Inventory
// [x,0] Item/Equipment ID number
// [x,1] Number of Items
// [x,2] Type of items  0 = nothing, 1 = ITEM, 2 = EQUIPMENT 

/*
globalvar obj_main.inventory;
obj_main.inventory[0,0] = 0;
obj_main.inventory[0,1] = 0;
obj_main.inventory[0,2] = 0;

obj_main.inventory[1,0] = 0;
obj_main.inventory[1,1] = 0;
obj_main.inventory[1,2] = 0;

obj_main.inventory[2,0] = 0;
obj_main.inventory[2,1] = 0;
obj_main.inventory[2,2] = 0;

obj_main.inventory[3,0] = 0;
obj_main.inventory[3,1] = 0;
obj_main.inventory[3,2] = 0;

obj_main.inventory[4,0] = 0;
obj_main.inventory[4,1] = 0;
obj_main.inventory[4,2] = 0;

obj_main.inventory[5,0] = 0;
obj_main.inventory[5,1] = 0;
obj_main.inventory[5,2] = 0;

obj_main.inventory[6,0] = 0;
obj_main.inventory[6,1] = 0;
obj_main.inventory[6,2] = 0;

obj_main.inventory[7,0] = 0;
obj_main.inventory[7,1] = 0;
obj_main.inventory[7,2] = 0;

obj_main.inventory[8,0] = 0;
obj_main.inventory[8,1] = 0;
obj_main.inventory[8,2] = 0;

obj_main.inventory[9,0] = 0;
obj_main.inventory[9,1] = 0;
obj_main.inventory[9,2] = 0;

obj_main.inventory[10,0] = 0;
obj_main.inventory[10,1] = 0;
obj_main.inventory[10,2] = 0;

obj_main.inventory[11,0] = 0;
obj_main.inventory[11,1] = 0;
obj_main.inventory[11,2] = 0;

obj_main.inventory[12,0] = 0;
obj_main.inventory[12,1] = 0;
obj_main.inventory[12,2] = 0;

obj_main.inventory[13,0] = 0;
obj_main.inventory[13,1] = 0;
obj_main.inventory[13,2] = 0;

obj_main.inventory[14,0] = 0;
obj_main.inventory[14,1] = 0;
obj_main.inventory[14,2] = 0;

obj_main.inventory[15,0] = 0;
obj_main.inventory[15,1] = 0;
obj_main.inventory[15,2] = 0;

obj_main.inventory[16,0] = 0;
obj_main.inventory[16,1] = 0;
obj_main.inventory[16,2] = 0;


obj_main.inventory[17,0] = 0;
obj_main.inventory[17,1] = 0;
obj_main.inventory[17,2] = 0;

obj_main.inventory[18,0] = 0;
obj_main.inventory[18,1] = 0;
obj_main.inventory[18,2] = 0;

obj_main.inventory[19,0] = 0;
obj_main.inventory[19,1] = 0;
obj_main.inventory[19,2] = 0;

obj_main.inventory[20,0] = 0;
obj_main.inventory[20,1] = 0;
obj_main.inventory[20,2] = 0;
*/
global.MAINFont = font_add_sprite_ext(spr_font, "0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.,'?! :/-$<=~&\#", false, 0);

// Run Init Scripts
//scr_init();
scr_init_eqit();
scr_init_tact();
scr_init_enemy();
scr_init_npc(); 



/* */
//-------------------------------------

global.zone_active = 3;

//-------------------------------------
// Main Menu

instance_create((room_width/2)-60,(room_height/2)-4,obj_cursor);
global.selector_active = 1;

audio_play_sound(msc_title,8,true);

//-------------------------------------
// Set Tactics & Items to player for testing
/*
obj_main.tactics_current_num = 1;
globalvar obj_main.tactic_slot;
obj_main.tactic_slot[1] = 1;


//------------------------------------------
// Inventory
// [x,0] Item/Equipment ID number
// [x,1] Number of Items
// [x,2] Type of items  0 = nothing, 1 = ITEM, 2 = EQUIPMENT 


obj_main.items_current_num = 4;
globalvar obj_main.inventory;
obj_main.inventory[1,0] = 3;
obj_main.inventory[1,1] = 1;
obj_main.inventory[1,2] = 2;

obj_main.inventory[2,0] = 101;
obj_main.inventory[2,1] = 1;
obj_main.inventory[2,2] = 2;

obj_main.inventory[3,0] = 111;
obj_main.inventory[3,1] = 1;
obj_main.inventory[3,2] = 2;

obj_main.inventory[4,0] = 1;
obj_main.inventory[4,1] = 2;
obj_main.inventory[4,2] = 1;
/*
obj_main.inventory[5,0] = 101;
obj_main.inventory[5,1] = 1;
obj_main.inventory[5,2] = 2;

obj_main.inventory[6,0] = 3;
obj_main.inventory[6,1] = 1;
obj_main.inventory[6,2] = 2;

obj_main.inventory[7,0] = 2;
obj_main.inventory[7,1] = 1;
obj_main.inventory[7,2] = 2;

obj_main.inventory[8,0] = 104;
obj_main.inventory[8,1] = 1;
obj_main.inventory[8,2] = 2;

obj_main.inventory[9,0] = 4;
obj_main.inventory[9,1] = 2;
obj_main.inventory[9,2] = 2;

obj_main.inventory[10,0] = 5;
obj_main.inventory[10,1] = 1;
obj_main.inventory[10,2] = 2;

obj_main.inventory[11,0] = 6;
obj_main.inventory[11,1] = 5;
obj_main.inventory[11,2] = 2;

obj_main.inventory[12,0] = 7;
obj_main.inventory[12,1] = 1;
obj_main.inventory[12,2] = 2;

obj_main.inventory[13,0] = 8;
obj_main.inventory[13,1] = 10;
obj_main.inventory[13,2] = 2;

obj_main.inventory[14,0] = 9;
obj_main.inventory[14,1] = 1;
obj_main.inventory[14,2] = 2;

obj_main.inventory[15,0] = 10;
obj_main.inventory[15,1] = 1;
obj_main.inventory[15,2] = 2;

obj_main.inventory[16,0] = 113;
obj_main.inventory[16,1] = 1;
obj_main.inventory[16,2] = 2;


obj_main.inventory[17,0] = 114;
obj_main.inventory[17,1] = 1;
obj_main.inventory[17,2] = 2;

obj_main.inventory[18,0] = 120;
obj_main.inventory[18,1] = 1;
obj_main.inventory[18,2] = 2;

obj_main.inventory[19,0] = 121;
obj_main.inventory[19,1] = 1;
obj_main.inventory[19,2] = 2;

obj_main.inventory[20,0] = 6;
obj_main.inventory[20,1] = 1;
obj_main.inventory[20,2] = 1;
*/


/* */
/*  */
// Statuses [STUS]
// If not noted, status can affect all

globalvar statii;
statii[0] = "Refresh";
statii[1] = "Regen";
statii[2] = "Wall";
statii[3] = "Shield";
statii[4] = "Silence";
statii[5] = "Virus";
statii[6] = "Blind";
statii[7] = "Slow";


