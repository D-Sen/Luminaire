{
//----------------------------------------------
//Tactics

/*
Mod Text:
null - no effect
Stat name (HP, TP, DEF, LCK, ATK, HIT, EVA, MD, INT) - mods stat by value +/-
STATUS/REMOVE - add/remove status effect based on number
*/

// Effectivity is represented in "Mod x value"

globalvar tactic;
tactic[0,0] = 0; //number
tactic[0,1] = "Null"; //Name 
tactic[0,2] = 0; //TP Cost
tactic[0,3] = "null"; //Mod 1 Text
tactic[0,4] = 0; //Mod 1 Values
tactic[0,5] = "null"; //Mod 2 Text
tactic[0,6] = 0; //Mod 2 Values
tactic[0,7] = "null"; //Mod 3 Text
tactic[0,8] = 0; //Mod 3 Values
tactic[0,9] = "null"; //Mod 4 Text
tactic[0,10] = 0; //Mod 4 Values
tactic[0,11] = "null"; //Area of Effect
tactic[0,12] = "NULL Tactic 0"; //Description
tactic[0,13] = 0; //Accuracy for status effect chance
tactic[0,14] = -1; //User sprite effect (player only) 
tactic[0,15] = -1;  //target sprite effect


tactic[1,0] = 1; 
tactic[1,1] = "Repair I";  
tactic[1,2] = 10; 
tactic[1,3] = "HP"; 
tactic[1,4] = 50; 
tactic[1,5] = "null"; 
tactic[1,6] = 0; 
tactic[1,7] = "null"; 
tactic[1,8] = 0; 
tactic[1,9] = "null"; 
tactic[1,10] = 0; 
tactic[1,11] = "tar_self"; 
tactic[1,12] = "Recovers a small amount of HP."; 
tactic[1,13] = 100;
tactic[1,14] = snd_tp1; //User sprite effect (player only) 
tactic[1,15] = spr_fx_heal;  //target sprite effect

tactic[2,0] = 2; //number
tactic[2,1] = "Shock Shot"; //Name 
tactic[2,2] = 20; //TP Cost
tactic[2,3] = "HP"; //Mod 1 Text
tactic[2,4] = -20; //Mod 1 Values
tactic[2,5] = "STATUS"; //Mod 2 Text
tactic[2,6] = 7; //Mod 2 Values
tactic[2,7] = "null"; //Mod 3 Text
tactic[2,8] = 0; //Mod 3 Values
tactic[2,9] = "null"; //Mod 4 Text
tactic[2,10] = 0; //Mod 4 Values
tactic[2,11] = "tar_sin"; //Area of Effect
tactic[2,12] = "Damages a Single target and applies Slow."; //Description
tactic[2,13] = 50;
tactic[2,14] = snd_tp4; //User sprite effect (player only) 
tactic[2,15] = spr_fx_shock;  //target sprite effect

tactic[3,0] = 3; //number
tactic[3,1] = "Gas Cloud"; //Name 
tactic[3,2] = 30; //TP Cost
tactic[3,3] = "HP"; //Mod 1 Text
tactic[3,4] = -60; //Mod 1 Values
tactic[3,5] = "STATUS"; //Mod 2 Text
tactic[3,6] = 5; //Mod 2 Values
tactic[3,7] = "null"; //Mod 3 Text
tactic[3,8] = 0; //Mod 3 Values
tactic[3,9] = "null"; //Mod 4 Text
tactic[3,10] = 0; //Mod 4 Values
tactic[3,11] = "tar_all"; //Area of Effect
tactic[3,12] = "Affects all enemies with a virus-filled cloud."; //Description
tactic[3,13] = 64;
tactic[3,14] = snd_tp4; //User sprite effect (player only) 
tactic[3,15] = spr_fx_gas;  //target sprite effect

tactic[4,0] = 4; 
tactic[4,1] = "Refresher";  
tactic[4,2] = 30; 
tactic[4,3] = "HP"; 
tactic[4,4] = -10; 
tactic[4,5] = "STATUS"; 
tactic[4,6] = 0; 
tactic[4,7] = "null"; 
tactic[4,8] = 0; 
tactic[4,9] = "null"; 
tactic[4,10] = 0; 
tactic[4,11] = "tar_self"; 
tactic[4,12] = "Gives the Refresh effect at the cost of HP."; 
tactic[4,13] = 100;
tactic[4,14] = snd_tp2; //User sprite effect (player only) 
tactic[4,15] = spr_fx_stat;  //target sprite effect

tactic[5,0] = 5; //number
tactic[5,1] = "Auto-Heal"; //Name 
tactic[5,2] = 40; //TP Cost
tactic[5,3] = "HP"; //Mod 1 Text
tactic[5,4] = 50; //Mod 1 Values
tactic[5,5] = "STATUS"; //Mod 2 Text
tactic[5,6] = 1; //Mod 2 Values
tactic[5,7] = "null"; //Mod 3 Text
tactic[5,8] = 0; //Mod 3 Values
tactic[5,9] = "null"; //Mod 4 Text
tactic[5,10] = 0; //Mod 4 Values
tactic[5,11] = "tar_self"; //Area of Effect
tactic[5,12] = "Recovers HP and applies Regen Status."; //Description
tactic[5,13] = 100;
tactic[5,14] = snd_tp2; //User sprite effect (player only) 
tactic[5,15] = spr_fx_stat;  //target sprite effect

tactic[6,0] = 6; 
tactic[6,1] = "Repair II";  
tactic[6,2] = 35; 
tactic[6,3] = "HP"; 
tactic[6,4] = 100; 
tactic[6,5] = "null"; 
tactic[6,6] = 0; 
tactic[6,7] = "null"; 
tactic[6,8] = 0; 
tactic[6,9] = "null"; 
tactic[6,10] = 0; 
tactic[6,11] = "tar_self"; 
tactic[6,12] = "Recovers a moderate amount of HP."; 
tactic[6,13] = 100;
tactic[6,14] = snd_talk; //User sprite effect (player only) 
tactic[6,15] = spr_fx_heal;  //target sprite effect

tactic[7,0] = 7; 
tactic[7,1] = "Smokescreen";  
tactic[7,2] = 25; 
tactic[7,3] = "LCK"; 
tactic[7,4] = 30; 
tactic[7,5] = "STATUS"; 
tactic[7,6] = 3; 
tactic[7,7] = "null"; 
tactic[7,8] = 0; 
tactic[7,9] = "null"; 
tactic[7,10] = 0; 
tactic[7,11] = "tar_self"; 
tactic[7,12] = "Increase the possibility of escape and adds 'Shield'."; 
tactic[7,13] = 100;
tactic[7,14] = snd_tp4; //User sprite effect (player only) 
tactic[7,15] = spr_fx_buff;  //target sprite effect




tactic[8,0] = 8; 
tactic[8,1] = "Repair III";  
tactic[8,2] = 45; 
tactic[8,3] = "HP"; 
tactic[8,4] = 300; 
tactic[8,5] = "STATUS"; 
tactic[8,6] = 2; 
tactic[8,7] = "null"; 
tactic[8,8] = 0; 
tactic[8,9] = "null"; 
tactic[8,10] = 0; 
tactic[8,11] = "tar_self"; 
tactic[8,12] = "Recovers a large amount of HP and adds 'Wall' status."; 
tactic[8,13] = 100;
tactic[8,14] = snd_talk; //User sprite effect (player only) 
tactic[8,15] = spr_fx_heal;  //target sprite effect


tactic[9,0] = 9; //number
tactic[9,1] = "EMP"; //Name 
tactic[9,2] = 60; //TP Cost
tactic[9,3] = "HP"; //Mod 1 Text
tactic[9,4] = -100; //Mod 1 Values
tactic[9,5] = "TP"; //Mod 2 Text
tactic[9,6] = 40; //Mod 2 Values
tactic[9,7] = "EVA"; //Mod 3 Text
tactic[9,8] = 20; //Mod 3 Values
tactic[9,9] = "null"; //Mod 4 Text
tactic[9,10] = 0; //Mod 4 Values
tactic[9,11] = "tar_all"; //Area of Effect
tactic[9,12] = "Damages all enemies and lowers TP and Evasion."; //Description
tactic[9,13] = 64;
tactic[9,14] = snd_tp1; //User sprite effect (player only) 
tactic[9,15] = spr_fx_shock;  //target sprite effect


tactic[10,0] = 10; //number
tactic[10,1] = "Restore ST"; //Name 
tactic[10,2] = 40; //TP Cost
tactic[10,3] = "REMOVE"; //Mod 1 Text
tactic[10,4] = 5; //Mod 1 Values
tactic[10,5] = "REMOVE"; //Mod 2 Text
tactic[10,6] = 6; //Mod 2 Values
tactic[10,7] = "REMOVE"; //Mod 3 Text
tactic[10,8] = 7; //Mod 3 Values
tactic[10,9] = "null"; //Mod 4 Text
tactic[10,10] = 0; //Mod 4 Values
tactic[10,11] = "tar_self"; //Area of Effect
tactic[10,12] = "Removes Virus, Blind, and Slow."; //Description
tactic[10,13] = 100;
tactic[10,14] = snd_tp1; //User sprite effect (player only) 
tactic[10,15] = spr_fx_stat;  //target sprite effect


tactic[11,0] = 11; //number
tactic[11,1] = "Aire Tam"; //Name 
tactic[11,2] = 70; //TP Cost
tactic[11,3] = "STATUS"; //Mod 1 Text
tactic[11,4] = 4; //Mod 1 Values
tactic[11,5] = "STATUS"; //Mod 2 Text
tactic[11,6] = 5; //Mod 2 Values
tactic[11,7] = "STATUS"; //Mod 3 Text
tactic[11,8] = 6; //Mod 3 Values
tactic[11,9] = "STATUS"; //Mod 4 Text
tactic[11,10] = 7; //Mod 4 Values
tactic[11,11] = "tar_all"; //Area of Effect
tactic[11,12] = "Deadly storm that adds Silence, Virus, Blind, Slow."; //Description
tactic[11,13] = 64;
tactic[11,14] = snd_tp2; //User sprite effect (player only) 
tactic[11,15] = spr_fx_tam;  //target sprite effect

tactic[12,0] = 12; //number
tactic[12,1] = "Repair IV"; //Name 
tactic[12,2] = 80; //TP Cost
tactic[12,3] = "HP"; //Mod 1 Text
tactic[12,4] = 400; //Mod 1 Values
tactic[12,5] = "MD"; //Mod 2 Text
tactic[12,6] = 20; //Mod 2 Values
tactic[12,7] = "ACC"; //Mod 3 Text
tactic[12,8] = 30; //Mod 3 Values
tactic[12,9] = "ATK"; //Mod 4 Text
tactic[12,10] = 20; //Mod 4 Values
tactic[12,11] = "tar_self"; //Area of Effect
tactic[12,12] = "Restores HP, adds magic defense, Accuracy, Attack."; //Description
tactic[12,13] = 100;
tactic[12,14] = snd_tp1; //User sprite effect (player only) 
tactic[12,15] = spr_fx_heal;  //target sprite effect

}
