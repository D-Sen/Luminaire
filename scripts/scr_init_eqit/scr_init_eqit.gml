{
//------------------------------------------
//Equipment List


globalvar equip;
equip[0,0] = 0; //ID Number
equip[0,1] = "None"; //Name
equip[0,2] = "NULL"; //Type of weap/armor ARM,HEAD,BODY,MOVE,ACC 
equip[0,3] = "Nothing" //Description
equip[0,4] = 0; //Monetary Value
equip[0,5] = 0; //WEAPON - weapon attack (watk)
equip[0,6] = 0; //WEAPON - critical rate (crit)
equip[0,7] = 0; //WEAPON - Accuracy(Hit%) 
equip[0,8] = 0; //ARMOR - Defense
equip[0,9] = 0; //ARMOR - weight
equip[0,10] = 0; //WEAPON/ARMOR - Tactics added  
equip[0,11] = "None"; //WEAPON - Status effect on a fight command
equip[0,12] = "None"; //WEAPON/ARMOR - ARMOR: Status defense, WEAPON: type bonus
equip[0,13] = spr_none; //Sprite
equip[0,14] = 0; //Sprite Index
equip[0,15] = "None"; //Sound (weapon only)
equip[0,16] = "None"; //Weapons attacking animation sprite

equip[1,0] = 1; //ID Number
equip[1,1] = "Drill Arms"; //Name 
equip[1,2] = "ARM"; 
equip[1,3] = "An ARM with a small drill attached."; 
equip[1,4] = 100; 
equip[1,5] = 20; 
equip[1,6] = 10; 
equip[1,7] = 5; 
equip[1,8] = 0; 
equip[1,9] = 0; 
equip[1,10] = 0; 
equip[1,11] = 0; 
equip[1,12] = 0; 
equip[1,13] = spr_eq_arms; 
equip[1,14] = 0
equip[1,15] = snd_drill;
equip[1,16] = spr_fx_drill;

equip[2,0] = 2; //ID Number
equip[2,1] = "Virus Arms"; //Name 
equip[2,2] = "ARM"; 
equip[2,3] = "An ARM that inflicts the target with Virus."; 
equip[2,4] = 200; 
equip[2,5] = 13; 
equip[2,6] = 5; 
equip[2,7] = 10; 
equip[2,8] = 0; 
equip[2,9] = 0; 
equip[2,10] = 0; 
equip[2,11] = 5; 
equip[2,12] = 0; 
equip[2,13] = spr_eq_arms; 
equip[2,14] = 6;
equip[2,15] = snd_virus;
equip[2,16] = spr_fx_virus;

equip[3,0] = 3; //ID Number
equip[3,1] = "Work Arms"; //Name 
equip[3,2] = "ARM"; 
equip[3,3] = "A regular robot ARM for completing tasks."; 
equip[3,4] = 50; 
equip[3,5] = 15; 
equip[3,6] = 10; 
equip[3,7] = 5; //50
equip[3,8] = 0; 
equip[3,9] = 0; 
equip[3,10] = 0; 
equip[3,11] = 0; 
equip[3,12] = 0; 
equip[3,13] = spr_eq_arms; 
equip[3,14] = 2;
equip[3,15] = snd_hurt2;
equip[3,16] = spr_fx_work;

equip[4,0] = 4; //ID Number
equip[4,1] = "Stun Arms"; //Name 
equip[4,2] = "ARM"; 
equip[4,3] = "Slows target and does a low amount of damage."; 
equip[4,4] = 300; 
equip[4,5] = 26; 
equip[4,6] = 20; 
equip[4,7] = 5; 
equip[4,8] = 0; 
equip[4,9] = 0; 
equip[4,10] = 0; 
equip[4,11] = 7; 
equip[4,12] = 0; 
equip[4,13] = spr_eq_arms; 
equip[4,14] = 3;
equip[4,15] = snd_stun;
equip[4,16] = spr_fx_lit;

equip[5,0] = 5; //ID Number
equip[5,1] = "SMG Arms"; //Name 
equip[5,2] = "ARM"; 
equip[5,3] = "High critical rate, and high accuracy + damage."; 
equip[5,4] = 500; 
equip[5,5] = 32; 
equip[5,6] = 30; 
equip[5,7] = 5; 
equip[5,8] = 0; 
equip[5,9] = 0; 
equip[5,10] = 0; 
equip[5,11] = 0; 
equip[5,12] = 0; 
equip[5,13] = spr_eq_arms; 
equip[5,14] = 5;
equip[5,15] = snd_smg;
equip[5,16] = spr_fx_bullets;

equip[6,0] = 6; //ID Number
equip[6,1] = "Rocket Arms"; //Name 
equip[6,2] = "ARM"; 
equip[6,3] = "High damage, high critical, low accuracy."; 
equip[6,4] = 2500; 
equip[6,5] = 28; 
equip[6,6] = 10; 
equip[6,7] = 10; 
equip[6,8] = 0; 
equip[6,9] = 0; 
equip[6,10] = 0; 
equip[6,11] = 0; 
equip[6,12] = 0; 
equip[6,13] = spr_eq_arms; 
equip[6,14] = 4;
equip[6,15] = snd_rocket;
equip[6,16] = spr_fx_rocket;

equip[7,0] = 7; //ID Number
equip[7,1] = "Laser Arms"; //Name 
equip[7,2] = "ARM"; 
equip[7,3] = "High damage, and adds effect: Blind."; 
equip[7,4] = 1500; 
equip[7,5] = 40; 
equip[7,6] = 40; 
equip[7,7] = 30; 
equip[7,8] = 0; 
equip[7,9] = 0; 
equip[7,10] = 0; 
equip[7,11] = 6; 
equip[7,12] = 0; 
equip[7,13] = spr_eq_arms; 
equip[7,14] = 1;
equip[7,15] = snd_laser;
equip[7,16] = spr_fx_laser;

equip[8,0] = 8; //ID Number
equip[8,1] = "Nuke Arms"; //Name 
equip[8,2] = "ARM"; 
equip[8,3] = "Low damage, and adds effect: Silence."; 
equip[8,4] = 500; 
equip[8,5] = 20; 
equip[8,6] = 25; 
equip[8,7] = 30; 
equip[8,8] = 0; 
equip[8,9] = 0; 
equip[8,10] = 0; 
equip[8,11] = 4; 
equip[8,12] = 0; 
equip[8,13] = spr_eq_arms; 
equip[8,14] = 7;
equip[8,15] = snd_blaze;
equip[8,16] = spr_fx_fire;

equip[9,0] = 9; //ID Number
equip[9,1] = "Grease Ar."; //Name 
equip[9,2] = "ARM"; 
equip[9,3] = "Medium damage, high accuracy. Adds: Blind."; 
equip[9,4] = 800; 
equip[9,5] = 30; 
equip[9,6] = 35; 
equip[9,7] = 5; 
equip[9,8] = 0; 
equip[9,9] = 0; 
equip[9,10] = 0; 
equip[9,11] = 6; 
equip[9,12] = 0; 
equip[9,13] = spr_eq_arms; 
equip[9,14] = 8;
equip[9,15] = snd_grease;
equip[9,16] = spr_fx_oil;

equip[10,0] = 10; //ID Number
equip[10,1] = "Spear Arms"; //Name 
equip[10,2] = "ARM"; 
equip[10,3] = "High damage, adds effect: Virus."; 
equip[10,4] = 3000; 
equip[10,5] = 30; 
equip[10,6] = 30; 
equip[10,7] = 15; 
equip[10,8] = 0; 
equip[10,9] = 0; 
equip[10,10] = 0; 
equip[10,11] = 5; 
equip[10,12] = 0; 
equip[10,13] = spr_eq_arms; 
equip[10,14] = 9;
equip[10,15] = snd_spear;
equip[10,16] = spr_fx_drill;

equip[101,0] = 101; //ID Number
equip[101,1] = "Tin Body"; //Name 
equip[101,2] = "BODY"; 
equip[101,3] = "Frail Tin torso piece.";  
equip[101,4] = 20; 
equip[101,5] = 0; 
equip[101,6] = 0; 
equip[101,7] = 0; 
equip[101,8] = 5; 
equip[101,9] = 8; 
equip[101,10] = 0; 
equip[101,11] = 0; 
equip[101,12] = 0; 
equip[101,13] = spr_eq_body; 
equip[101,14] = 0;
equip[101,15] = "None";
equip[101,16] = "None";

equip[102,0] = 102; //ID Number
equip[102,1] = "Iron Body"; //Name 
equip[102,2] = "BODY"; 
equip[102,3] = "Iron torso plate.";  
equip[102,4] = 200; 
equip[102,5] = 0; 
equip[102,6] = 0; 
equip[102,7] = 0; 
equip[102,8] = 15; 
equip[102,9] = 15; 
equip[102,10] = 0; 
equip[102,11] = 0; 
equip[102,12] = 0; 
equip[102,13] = spr_eq_body; 
equip[102,14] = 1;
equip[102,15] = "None";
equip[102,16] = "None";

equip[103,0] = 103; //ID Number
equip[103,1] = "Steel Body"; //Name 
equip[103,2] = "BODY"; 
equip[103,3] = "Steel torso plate.";  
equip[103,4] = 2000; 
equip[103,5] = 0; 
equip[103,6] = 0; 
equip[103,7] = 0; 
equip[103,8] = 34; 
equip[103,9] = 20; 
equip[103,10] = 0; 
equip[103,11] = 0; 
equip[103,12] = 10; 
equip[103,13] = spr_eq_body; 
equip[103,14] = 2;
equip[103,15] = "None";
equip[103,16] = "None";

equip[104,0] = 104; //ID Number
equip[104,1] = "Titan Body"; //Name 
equip[104,2] = "BODY"; 
equip[104,3] = "High quality Titanium plate. Stops 'Slow'";  
equip[104,4] = 20000; 
equip[104,5] = 0; 
equip[104,6] = 0; 
equip[104,7] = 0; 
equip[104,8] = 42; 
equip[104,9] = 10; 
equip[104,10] = 0; 
equip[104,11] = 0; 
equip[104,12] = 7; 
equip[104,13] = spr_eq_body; 
equip[104,14] = 3;
equip[104,15] = "None";
equip[104,16] = "None";

equip[111,0] = 111; //ID Number
equip[111,1] = "Tin Helm"; //Name 
equip[111,2] = "HELM"; 
equip[111,3] = "Frail Tin head piece.";  
equip[111,4] = 20; 
equip[111,5] = 0; 
equip[111,6] = 0; 
equip[111,7] = 0; 
equip[111,8] = 3; 
equip[111,9] = 3; 
equip[111,10] = 0; 
equip[111,11] = 0; 
equip[111,12] = 0; 
equip[111,13] = spr_eq_helm; 
equip[111,14] = 0;
equip[111,15] = "None";
equip[111,16] = "None";

equip[112,0] = 112; //ID Number
equip[112,1] = "Iron Helm"; //Name 
equip[112,2] = "HELM"; 
equip[112,3] = "Iron head piece.";  
equip[112,4] = 100; 
equip[112,5] = 0; 
equip[112,6] = 0; 
equip[112,7] = 0; 
equip[112,8] = 5; 
equip[112,9] = 5; 
equip[112,10] = 0; 
equip[112,11] = 0; 
equip[112,12] = 0; 
equip[112,13] = spr_eq_helm; 
equip[112,14] = 1;
equip[112,15] = "None";
equip[112,16] = "None";

equip[113,0] = 113; //ID Number
equip[113,1] = "Steel Helm"; //Name 
equip[113,2] = "HELM"; 
equip[113,3] = "Steel head piece.";  
equip[113,4] = 250; 
equip[113,5] = 0; 
equip[113,6] = 0; 
equip[113,7] = 0; 
equip[113,8] = 6; 
equip[113,9] = 3; 
equip[113,10] = 0; 
equip[113,11] = 0; 
equip[113,12] = 0; 
equip[113,13] = spr_eq_helm; 
equip[113,14] = 2;
equip[113,15] = "None";
equip[113,16] = "None";

equip[114,0] = 114; //ID Number
equip[114,1] = "Titan Helm"; //Name 
equip[114,2] = "HELM"; 
equip[114,3] = "Titanium head plate. Stops 'Silence'";  
equip[114,4] = 3000; 
equip[114,5] = 0; 
equip[114,6] = 0; 
equip[114,7] = 0; 
equip[114,8] = 8; 
equip[114,9] = 3; 
equip[114,10] = 0; 
equip[114,11] = 0; 
equip[114,12] = 4; 
equip[114,13] = spr_eq_helm; 
equip[114,14] = 3;
equip[114,15] = "None";
equip[114,16] = "None";


equip[120,0] = 120; //ID Number
equip[120,1] = "Parser"; //Name 
equip[120,2] = "ACC"; 
equip[120,3] = "Doubles amount of experience gained.";  
equip[120,4] = 2000; 
equip[120,5] = 0; 
equip[120,6] = 0; 
equip[120,7] = 0; 
equip[120,8] = 0; 
equip[120,9] = 0; 
equip[120,10] = 0; 
equip[120,11] = 0; 
equip[120,12] = 0; 
equip[120,13] = spr_eq_acc; 
equip[120,14] = 2;
equip[120,15] = "None";
equip[120,16] = "None";

equip[121,0] = 121; //ID Number
equip[121,1] = "Extractor"; //Name 
equip[121,2] = "ACC"; 
equip[121,3] = "Doubles amount of money earned.";  
equip[121,4] = 1000; 
equip[121,5] = 0; 
equip[121,6] = 0; 
equip[121,7] = 0; 
equip[121,8] = 0; 
equip[121,9] = 0; 
equip[121,10] = 0; 
equip[121,11] = 0; 
equip[121,12] = 0; 
equip[121,13] = spr_eq_acc; 
equip[121,14] = 3;
equip[121,15] = "None";
equip[121,16] = "None";

equip[122,0] = 122; //ID Number
equip[122,1] = "Cloak"; //Name 
equip[122,2] = "ACC"; 
equip[122,3] = "Avoids random battles.";  
equip[122,4] = 4000; 
equip[122,5] = 0; 
equip[122,6] = 0; 
equip[122,7] = 0; 
equip[122,8] = 0; 
equip[122,9] = 0; 
equip[122,10] = 0; 
equip[122,11] = 0; 
equip[122,12] = 0; 
equip[122,13] = spr_eq_acc; 
equip[122,14] = 0;
equip[122,15] = "None";
equip[122,16] = "None";


//------------------------------------------
// Treasure
// [x,0] Item/Equipment ID number
// [x,1] Number of Items
// [x,2] Type of items  0 = nothing, 1 = ITEM, 2 = EQUIPMENT, 3 = tactic
// [x,3] Empty or full: True = full, false = empty
// [x,4] Sprite

globalvar treasure;
treasure[0,0] = 0;
treasure[0,1] = 0;
treasure[0,2] = 0;
treasure[0,3] = false;
treasure[0,4] = "";

treasure[1,0] = 2;
treasure[1,1] = 1;
treasure[1,2] = 2;
treasure[1,3] = true;
treasure[1,4] = "";

treasure[2,0] = 5;
treasure[2,1] = 1;
treasure[2,2] = 1;
treasure[2,3] = true;
treasure[2,4] = "";

treasure[3,0] = 10;
treasure[3,1] = 1;
treasure[3,2] = 1;
treasure[3,3] = true;
treasure[3,4] = "";

treasure[4,0] = 4;
treasure[4,1] = 1;
treasure[4,2] = 1;
treasure[4,3] = true;
treasure[4,4] = "";

treasure[5,0] = 5;
treasure[5,1] = 1;
treasure[5,2] = 1;
treasure[5,3] = true;
treasure[5,4] = "";

treasure[6,0] = 3;
treasure[6,1] = 1;
treasure[6,2] = 2;
treasure[6,3] = true;
treasure[6,4] = "";

treasure[7,0] = 8;
treasure[7,1] = 1;
treasure[7,2] = 1;
treasure[7,3] = true;
treasure[7,4] = "";

treasure[8,0] = 9;
treasure[8,1] = 1;
treasure[8,2] = 2;
treasure[8,3] = true;
treasure[8,4] = "";

treasure[9,0] = 5;
treasure[9,1] = 1;
treasure[9,2] = 1;
treasure[9,3] = true;
treasure[9,4] = "";

treasure[10,0] = 7;
treasure[10,1] = 1;
treasure[10,2] = 2;
treasure[10,3] = true;
treasure[10,4] = "";

treasure[11,0] = 6;
treasure[11,1] = 1;
treasure[11,2] = 2;
treasure[11,3] = true;
treasure[11,4] = "";

treasure[12,0] = 7;
treasure[12,1] = 1;
treasure[12,2] = 2;
treasure[12,3] = true;
treasure[12,4] = "";

treasure[13,0] = 6;
treasure[13,1] = 1;
treasure[13,2] = 2;
treasure[13,3] = true;
treasure[13,4] = "";

treasure[14,0] = 4;
treasure[14,1] = 1;
treasure[14,2] = 2;
treasure[14,3] = true;
treasure[14,4] = "";

treasure[15,0] = 10;
treasure[15,1] = 1;
treasure[15,2] = 2;
treasure[15,3] = true;
treasure[15,4] = "";

treasure[16,0] = 5;
treasure[16,1] = 1;
treasure[16,2] = 2;
treasure[16,3] = true;
treasure[16,4] = "";


//------------------------------------------
// Item List
// No other mods will exist after the first "null" valued Mod # 
// Mod X Text = string to check to see which stat is modded
// Mod X Value = how much the value gets modded

globalvar item;
item[0,0] = 0; //number
item[0,1] = "NULL"; //Name 
item[0,2] = "Null Item"; //Descriptions
item[0,3] = 1; //Monetary Value
item[0,4] = "null"; //Mod 1 Text
item[0,5] = 0; //Mod 1 Values
item[0,6] = "null"; //Mod 2 Text
item[0,7] = 0; //Mod 2 Values
item[0,8] = "null"; //Mod 3 Text
item[0,9] = 0; //Mod 3 Values
item[0,10] = "null"; //Mod 4 Text
item[0,11] = 0; //Mod 4 Values
item[0,12] = "none"; //Sprite 
item[0,13] = 0; //Sprite Index


item[1,0] = 1; //number
item[1,1] = "Synth I"; //Name 
item[1,2] = "Recovers a small amount of HP."; //Descriptions
item[1,3] = 10; //Monetary Value
item[1,4] = "HP"; //Mod 1 Text
item[1,5] = 50; //Mod 1 Values
item[1,6] = "null"; //Mod 2 Text
item[1,7] = 0; //Mod 2 Values
item[1,8] = "null"; //Mod 3 Text
item[1,9] = 0; //Mod 3 Values
item[1,10] = "null"; //Mod 4 Text
item[1,11] = 0; //Mod 4 Values
item[1,12] = spr_it_fluid; //Sprite 
item[1,13] = 0; //Sprite Index

item[2,0] = 2; //number
item[2,1] = "Battery I"; //Name 
item[2,2] = "Recharges tactical Points."; 
item[2,3] = 20; 
item[2,4] = "TP"; 
item[2,5] = 50; 
item[2,6] = "null"; 
item[2,7] = 0; 
item[2,8] = "null"; 
item[2,9] = 0; 
item[2,10] = "null"; 
item[2,11] = 0; 
item[2,12] = spr_it_battery; //Sprite 
item[2,13] = 0; //Sprite Index

item[3,0] = 3; //number
item[3,1] = "HQ Oil"; //Name 
item[3,2] = "Recovers a lot of HP and TP."; 
item[3,3] = 2000; 
item[3,4] = "HP"; 
item[3,5] = 200; 
item[3,6] = "TP"; 
item[3,7] = 100; 
item[3,8] = "null"; 
item[3,9] = 0; 
item[3,10] = "null"; 
item[3,11] = 0; 
item[3,12] = spr_it_fluid2; //Sprite 
item[3,13] = 0; //Sprite Index

item[4,0] = 4; //number
item[4,1] = "Synth II"; //Name 
item[4,2] = "Quart of Synthetic II. Recovers HP."; //Descriptions
item[4,3] = 300; //Monetary Value
item[4,4] = "HP"; //Mod 1 Text
item[4,5] = 100; //Mod 1 Values
item[4,6] = "null"; //Mod 2 Text
item[4,7] = 0; //Mod 2 Values
item[4,8] = "null"; //Mod 3 Text
item[4,9] = 0; //Mod 3 Values
item[4,10] = "null"; //Mod 4 Text
item[4,11] = 0; //Mod 4 Values
item[4,12] = spr_it_fluid; //Sprite 
item[4,13] = 1; //Sprite Index

item[5,0] = 5; //number
item[5,1] = "Synth III"; //Name 
item[5,2] = "Recovers lots of HP."; //Descriptions
item[5,3] = 600; //Monetary Value
item[5,4] = "HP"; //Mod 1 Text
item[5,5] = 500; //Mod 1 Values
item[5,6] = "null"; //Mod 2 Text
item[5,7] = 0; //Mod 2 Values
item[5,8] = "null"; //Mod 3 Text
item[5,9] = 0; //Mod 3 Values
item[5,10] = "null"; //Mod 4 Text
item[5,11] = 0; //Mod 4 Values
item[5,12] = spr_it_fluid; //Sprite 
item[5,13] = 2; //Sprite Index

item[6,0] = 6; //number
item[6,1] = "Battery II"; //Name 
item[6,2] = "Recovers a decent amount of TP."; //Descriptions
item[6,3] = 100; //Monetary Value
item[6,4] = "TP"; //Mod 1 Text
item[6,5] = 100; //Mod 1 Values
item[6,6] = "null"; //Mod 2 Text
item[6,7] = 0; //Mod 2 Values
item[6,8] = "null"; //Mod 3 Text
item[6,9] = 0; //Mod 3 Values
item[6,10] = "null"; //Mod 4 Text
item[6,11] = 0; //Mod 4 Values
item[6,12] = spr_it_battery; //Sprite 
item[6,13] = 1; //Sprite Index

item[7,0] = 7; //number
item[7,1] = "Battery III"; //Name 
item[7,2] = "Recovers lots of TP."; //Descriptions
item[7,3] = 500; //Monetary Value
item[7,4] = "TP"; //Mod 1 Text
item[7,5] = 150; //Mod 1 Values
item[7,6] = "null"; //Mod 2 Text
item[7,7] = 0; //Mod 2 Values
item[7,8] = "null"; //Mod 3 Text
item[7,9] = 0; //Mod 3 Values
item[7,10] = "null"; //Mod 4 Text
item[7,11] = 0; //Mod 4 Values
item[7,12] = spr_it_battery; //Sprite 
item[7,13] = 2; //Sprite Index

item[8,0] = 8; //number
item[8,1] = "Ion Input"; //Name 
item[8,2] = "Removes Blind, Virus, Silence, and Slow."; //Descriptions
item[8,3] = 700; //Monetary Value
item[8,4] = "REMOVE"; //Mod 1 Text
item[8,5] = 4; //Mod 1 Values
item[8,6] = "REMOVE"; //Mod 2 Text
item[8,7] = 5; //Mod 2 Values
item[8,8] = "REMOVE"; //Mod 3 Text
item[8,9] = 6; //Mod 3 Values
item[8,10] = "REMOVE"; //Mod 4 Text
item[8,11] = 7; //Mod 4 Values
item[8,12] = spr_it_input; //Sprite 
item[8,13] = 0; //Sprite Index

item[9,0] = 9; //number
item[9,1] = "Clear Input"; //Name 
item[9,2] = "Removes Blind & Virus."; //Descriptions
item[9,3] = 200; //Monetary Value
item[9,4] = "REMOVE"; //Mod 1 Text
item[9,5] = 5; //Mod 1 Values
item[9,6] = "REMOVE"; //Mod 2 Text
item[9,7] = 6; //Mod 2 Values
item[9,8] = "null"; //Mod 3 Text
item[9,9] = 0; //Mod 3 Values
item[9,10] = "null"; //Mod 4 Text
item[9,11] = 0; //Mod 4 Values
item[9,12] = spr_it_input; //Sprite 
item[9,13] = 1; //Sprite Index

}
