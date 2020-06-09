{
/*
//------------------------------------------
//NPCs


npc[x,2] - Type : 
0 = Regular talking npc
1 = NPC with question
2 = Merchant
3 = Sign
4 = charge station
30+ = Boss - corresponds with id # (enemy[x,0]) 

//Mission Flag 
// 1-100 Main story missions
// 101-151 NPC specific mission flag
// 200 (specials)
//  201 - Give item
//  202 - Take Item
//  203 - Start Fight
//  204 - Give Tactic
//  205 - Skip dia1
//  206 - Skip dia2
*/


globalvar npc;
npc[0,0] = 0; //ID Number
npc[0,1] = "None"; //Name
npc[0,2] = "NULL"; //Type of NPC reg,choice,shop,event 
npc[0,3] = "Nothing Here" //Description
npc[0,4] = 0; //Money
npc[0,5] = 0; //Sprite
npc[0,6] = "None"; //DIA1 - dialogue 1
npc[0,7] = "None"; //DIA2 - dialogue 2 
npc[0,8] = "None"; //DIA3 - dialogue 3
npc[0,9] = 0; //PLaceholder for created objects ID # (6 digits)
npc[0,10] = 0; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[0,11] = 0; //Mission Flag
npc[0,12] = 0; //Item1  
npc[0,13] = 0; //Item2
npc[0,14] = 0; //Item3
npc[0,15] = 0; //Sell List - If NPC is shopkeep, seller list array to point to sellers list

npc[1,0] = 1; //ID Number
npc[1,1] = "Info1"; //Name
npc[1,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[1,3] = "MARTELLO" //Description
npc[1,4] = 0; //Money
npc[1,5] = spr_npc_6; //Sprite
npc[1,6] = "Howdy stranger! Never seen you 'round these parts before. We don't get many visitors around here, you must be from the north. "; //DIA1 - dialogue 1
npc[1,7] = "Unless you came outta Red Mountain! Haha! No, just foolin'."; //DIA2 - dialogue 2 
npc[1,8] = "None"; //DIA3 - dialogue 3
npc[1,9] = 0;
npc[1,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[1,11] = 0;
npc[1,12] = 0; //Item1  
npc[1,13] = 0; //Item2
npc[1,14] = 0; //Item3
npc[1,15] = 0;

npc[2,0] = 2; //ID Number
npc[2,1] = "Info2"; //Name
npc[2,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[2,3] = "MARTELLO" //Description
npc[2,4] = 0; //Money
npc[2,5] = spr_npc_4; //Sprite
npc[2,6] = "You are one of those new guardian units. A Wire was sent that some of you are malfunctioning. Are you one of those malfunctioning units?"; //DIA1 - dialogue 1
npc[2,7] = "Ah, I couldn't tell. It is the duty of the Guardians to eliminate malfunctioning robots, so that really isn't in my job description anyway."; //DIA2 - dialogue 2 
npc[2,8] = "None"; //DIA3 - dialogue 3
npc[2,9] = 0;
npc[2,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[2,11] = 0;
npc[2,12] = 0; //Item1  
npc[2,13] = 0; //Item2
npc[2,14] = 0; //Item3
npc[2,15] = 0;

npc[3,0] = 3; //ID Number
npc[3,1] = "Info3"; //Name
npc[3,2] = 0; //Type of NPC reg0,choice1,merchant2,event3 
npc[3,3] = "MARTELLO" //Description
npc[3,4] = 0; //Money
npc[3,5] = spr_npc_3; //Sprite
npc[3,6] = "You're one of those new models they must've recently starting making. We task robots mostly just perform 'tasks' and work in the cities and towns. "; //DIA1 - dialogue 1
npc[3,7] = "You Guardian models are created for defense, protection, and rescue. There are quite a few different types of you out there. "; //DIA2 - dialogue 2 
npc[3,8] = "They are always looking for the next great breakthrough, so new models are always cropping up."; //DIA3 - dialogue 3
npc[3,9] = 0;
npc[3,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[3,11] = 0;
npc[3,12] = 0; //Item1  
npc[3,13] = 0; //Item2
npc[3,14] = 0; //Item3
npc[3,15] = 0;


npc[4,0] = 4; //ID Number
npc[4,1] = "Merchant"; //Name
npc[4,2] = 2; //Type of NPC reg0,choice1,merchant2,event3 
npc[4,3] = "MARTELLO" //Description
npc[4,4] = 500; //Money
npc[4,5] = spr_npc_5; //Sprite
npc[4,6] = "Welcome to the shop!"; //DIA1 - dialogue 1
npc[4,7] = "What would you like to sell?"; //DIA2 - dialogue 2 
npc[4,8] = "What would you like to buy?"; //DIA3 - dialogue 3
npc[4,9] = 0;
npc[4,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[4,11] = 0;
npc[4,12] = 0; //Item1  
npc[4,13] = 0; //Item2
npc[4,14] = 0; //Item3
npc[4,15] = 1;

npc[5,0] = 5; //ID Number
npc[5,1] = "SIGN"; //Name
npc[5,2] = 3; //Type of NPC reg0,choice1,shop2,event3 
npc[5,3] = "MARTELLO" //Description
npc[5,4] = 0; //Money
npc[5,5] = spr_sign; //Sprite
npc[5,6] = "Martello##Head west for Red Mountain#North for Orania Pass."; //DIA1 - dialogue 1
npc[5,7] = "None"; //DIA2 - dialogue 2 
npc[5,8] = "None"; //DIA3 - dialogue 3
npc[5,9] = 0;
npc[5,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[5,11] = 0;
npc[5,12] = 0; //Item1  
npc[5,13] = 0; //Item2
npc[5,14] = 0; //Item3
npc[5,15] = 0;

npc[6,0] = 6; //ID Number
npc[6,1] = "Info1"; //Name
npc[6,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[6,3] = "AYVER" //Description
npc[6,4] = 0; //Money
npc[6,5] = spr_npc_6; //Sprite
npc[6,6] = "From what I read about your prototype model, applying status effects to targets is computed thus: 0~200 <= 168 - Targets' MDEF."; //DIA1 - dialogue 1
npc[6,7] = "None"; //DIA2 - dialogue 2 
npc[6,8] = "None"; //DIA3 - dialogue 3
npc[6,9] = 0;
npc[6,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[6,11] = 0;
npc[6,12] = 0; //Item1  
npc[6,13] = 0; //Item2
npc[6,14] = 0; //Item3
npc[6,15] = 0;

npc[7,0] = 7; //ID Number
npc[7,1] = "Info2"; //Name
npc[7,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[7,3] = "AYVER" //Description
npc[7,4] = 0; //Money
npc[7,5] = spr_npc_2; //Sprite
npc[7,6] = "If you're wondering about traveling east, there is a checkpoint along the bridge where they scan your meta data. If your tasklist does not include a "; //DIA1 - dialogue 1
npc[7,7] = "travel authorization, you will be turned back or 'dealth with' according to case-by-case protocol."; //DIA2 - dialogue 2 
npc[7,8] = "None"; //DIA3 - dialogue 3
npc[7,9] = 0;
npc[7,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[7,11] = 0;
npc[7,12] = 0; //Item1  
npc[7,13] = 0; //Item2
npc[7,14] = 0; //Item3
npc[7,15] = 0;

npc[8,0] = 8; //ID Number
npc[8,1] = "Info3"; //Name
npc[8,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[8,3] = "AYVER" //Description
npc[8,4] = 0; //Money
npc[8,5] = spr_npc_3; //Sprite
npc[8,6] = "I recently acquired data about something called 'The Luminaire'. It is a robot who is supposed to assist the robot race in ascending to a higher plateau of AI."; //DIA1 - dialogue 1
npc[8,7] = "Although this information is suppressed to assist the base in retaining control."; //DIA2 - dialogue 2 
npc[8,8] = "In fact i should not be sharing this. Those that accept or spread this information could be seen as 'glitchy' and become targets."; //DIA3 - dialogue 3
npc[8,9] = 0;
npc[8,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[8,11] = 0;
npc[8,12] = 0; //Item1  
npc[8,13] = 0; //Item2
npc[8,14] = 0; //Item3
npc[8,15] = 0;

npc[9,0] = 9; //ID Number
npc[9,1] = "Merchant"; //Name
npc[9,2] = 2; //Type of NPC reg0,choice1,shop2,event3 
npc[9,3] = "AYVER" //Description
npc[9,4] = 2000; //Money
npc[9,5] = spr_npc_5; //Sprite
npc[9,6] = "Welcome to the shop!"; //DIA1 - dialogue 1
npc[9,7] = "What would you like to sell?"; //DIA2 - dialogue 2 
npc[9,8] = "What would you like to buy?"; //DIA3 - dialogue 3
npc[9,9] = 0;
npc[9,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[9,11] = 0;
npc[9,12] = 0; //Item1  
npc[9,13] = 0; //Item2
npc[9,14] = 0; //Item3
npc[9,15] = 2;


npc[10,0] = 10; //ID Number
npc[10,1] = "SIGN"; //Name
npc[10,2] = 3; //Type of NPC reg0,choice1,shop2,event3 
npc[10,3] = "AYVER" //Description
npc[10,4] = 0; //Money
npc[10,5] = spr_sign; //Sprite
npc[10,6] = "Ayver##Head west for Orania Pass#Northwest for Dogeville#North for Great cave#Northeast to the bridge."; //DIA1 - dialogue 1
npc[10,7] = "None"; //DIA2 - dialogue 2 
npc[10,8] = "None"; //DIA3 - dialogue 3
npc[10,9] = 0;
npc[10,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[10,11] = 0;
npc[10,12] = 0; //Item1  
npc[10,13] = 0; //Item2
npc[10,14] = 0; //Item3
npc[10,15] = 0;


npc[11,0] = 11; //ID Number
npc[11,1] = "Info1"; //Name
npc[11,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[11,3] = "DOGE" //Description
npc[11,4] = 10; //Money
npc[11,5] = spr_npc_1; //Sprite
npc[11,6] = "Welcome! We don't get many of your model up around these parts. There isn't many tasks here to perform, and they aren't even mission critical."; //DIA1 - dialogue 1
npc[11,7] = "Across the mountain range is the Great North Cave. It was used for equipment storage, but is now abandoned and heavily guarded."; //DIA2 - dialogue 2 
npc[11,8] = "None"; //DIA3 - dialogue 3
npc[11,9] = 0;
npc[11,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[11,11] = 0;
npc[11,12] = 0; //Item1  
npc[11,13] = 0; //Item2
npc[11,14] = 0; //Item3
npc[11,15] = 0;

npc[12,0] = 12; //ID Number
npc[12,1] = "Info2"; //Name
npc[12,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[12,3] = "DOGE" //Description
npc[12,4] = 0; //Money
npc[12,5] = spr_npc_4; //Sprite
npc[12,6] = "Humans? What are they? Are they some type of animal or insect?"; //DIA1 - dialogue 1
npc[12,7] = "None"; //DIA2 - dialogue 2 
npc[12,8] = "None"; //DIA3 - dialogue 3
npc[12,9] = 0;
npc[12,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[12,11] = 0;
npc[12,12] = 0; //Item1  
npc[12,13] = 0; //Item2
npc[12,14] = 0; //Item3
npc[12,15] = 0;


npc[13,0] = 13; //ID Number
npc[13,1] = "Info3"; //Name
npc[13,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[13,3] = "DOGE" //Description
npc[13,4] = 0; //Money
npc[13,5] = spr_npc_3; //Sprite
npc[13,6] = "An old data file suggests that a new robot will bring about a new concept of 'free will'."; //DIA1 - dialogue 1
npc[13,7] = "A robot with 'free will' may follow its own instruction, instead of code from the wire or innate built-in processes'."; //DIA2 - dialogue 2 
npc[13,8] = "None"; //DIA3 - dialogue 3
npc[13,9] = 0;
npc[13,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[13,11] = 0;
npc[13,12] = 0; //Item1  
npc[13,13] = 0; //Item2
npc[13,14] = 0; //Item3
npc[13,15] = 0;

npc[14,0] = 14; //ID Number
npc[14,1] = "Merchant"; //Name
npc[14,2] = 2; //Type of NPC reg0,choice1,merchant2,event3 
npc[14,3] = "DOGE" //Description
npc[14,4] = 3000; //Money
npc[14,5] = spr_npc_5; //Sprite
npc[14,6] = "Welcome to the shop!"; //DIA1 - dialogue 1
npc[14,7] = "What would you like to sell?"; //DIA2 - dialogue 2 
npc[14,8] = "What would you like to buy?"; //DIA3 - dialogue 3
npc[14,9] = 0;
npc[14,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[14,11] = 0;
npc[14,12] = 0; //Item1  
npc[14,13] = 0; //Item2
npc[14,14] = 0; //Item3
npc[14,15] = 3;

//NO 15 - DOGE SIGN

npc[16,0] = 16; //ID Number
npc[16,1] = "Info1"; //Name
npc[16,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[16,3] = "GREAT" //Description
npc[16,4] = 0; //Money
npc[16,5] = spr_npc_1; //Sprite
npc[16,6] = "Welcome to GreatPass!"; //DIA1 - dialogue 1
npc[16,7] = "Across the southern bridge is Zeal. The strongest of Guardians are in that area!"; //DIA2 - dialogue 2 
npc[16,8] = "None"; //DIA3 - dialogue 3
npc[16,9] = 0;
npc[16,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[16,11] = 0;
npc[16,12] = 0; //Item1  
npc[16,13] = 0; //Item2
npc[16,14] = 0; //Item3
npc[16,15] = 0;


npc[17,0] = 17; //ID Number
npc[17,1] = "Info2"; //Name
npc[17,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[17,3] = "GREAT" //Description
npc[17,4] = 0; //Money
npc[17,5] = spr_npc_2; //Sprite
npc[17,6] = "Tasks must be completed and threats must be extinguished. This keeps our society running."; //DIA1 - dialogue 1
npc[17,7] = "The Emporer runs the base in Zeal and controls information distributed across the wire. His rule is absolute."; //DIA2 - dialogue 2 
npc[17,8] = "None"; //DIA3 - dialogue 3
npc[17,9] = 0;
npc[17,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[17,11] = 0;
npc[17,12] = 0; //Item1  
npc[17,13] = 0; //Item2
npc[17,14] = 0; //Item3
npc[17,15] = 0;

npc[18,0] = 18; //ID Number
npc[18,1] = "Info3"; //Name
npc[18,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[18,3] = "GREAT" //Description
npc[18,4] = 0; //Money
npc[18,5] = spr_npc_4; //Sprite
npc[18,6] = "The Luminaire that was referenced in the old data file is not a reality. Logic dictates that it is not possible."; //DIA1 - dialogue 1
npc[18,7] = "None"; //DIA2 - dialogue 2 
npc[18,8] = "None"; //DIA3 - dialogue 3
npc[18,9] = 0;
npc[18,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[18,11] = 0;
npc[18,12] = 0; //Item1  
npc[18,13] = 0; //Item2
npc[18,14] = 0; //Item3
npc[18,15] = 0;

npc[19,0] = 19; //ID Number
npc[19,1] = "Merchant"; //Name
npc[19,2] = 2; //Type of NPC reg0,choice1,merchant2,event3 
npc[19,3] = "GREAT" //Description
npc[19,4] = 5000; //Money
npc[19,5] = spr_npc_5; //Sprite
npc[19,6] = "Welcome to the shop!"; //DIA1 - dialogue 1
npc[19,7] = "What would you like to sell?"; //DIA2 - dialogue 2 
npc[19,8] = "What would you like to buy?"; //DIA3 - dialogue 3
npc[19,9] = 0;
npc[19,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[19,11] = 0;
npc[19,12] = 0; //Item1  
npc[19,13] = 0; //Item2
npc[19,14] = 0; //Item3
npc[19,15] = 4;

npc[20,0] = 20; //ID Number
npc[20,1] = "SIGN"; //Name
npc[20,2] = 3; //Type of NPC reg0,choice1,shop2,event3 
npc[20,3] = "GREAT" //Description
npc[20,4] = 0; //Money
npc[20,5] = spr_sign; //Sprite
npc[20,6] = "GreatPass##Head north for Perique Pass#South for Zeal."; //DIA1 - dialogue 1
npc[20,7] = "None"; //DIA2 - dialogue 2 
npc[20,8] = "None"; //DIA3 - dialogue 3
npc[20,9] = 0;
npc[20,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[20,11] = 0;
npc[20,12] = 0; //Item1  
npc[20,13] = 0; //Item2
npc[20,14] = 0; //Item3
npc[20,15] = 0;

npc[21,0] = 21; //ID Number
npc[21,1] = "Info1"; //Name
npc[21,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[21,3] = "ZEAL" //Description
npc[21,4] = 0; //Money
npc[21,5] = spr_npc_1; //Sprite
npc[21,6] = "You're that Glitched prototype the Guardians are looking for! Guardians Alert!"; //DIA1 - dialogue 1
npc[21,7] = "None"; //DIA2 - dialogue 2 
npc[21,8] = "None"; //DIA3 - dialogue 3
npc[21,9] = 0;
npc[21,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[21,11] = 0;
npc[21,12] = 0; //Item1  
npc[21,13] = 0; //Item2
npc[21,14] = 0; //Item3
npc[21,15] = 0;

npc[22,0] = 22; //ID Number
npc[22,1] = "Info2"; //Name
npc[22,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[22,3] = "ZEAL" //Description
npc[22,4] = 0; //Money
npc[22,5] = spr_npc_2; //Sprite
npc[22,6] = "Thank you. Now we are able to complete tasks that require travel outside the gate."; //DIA1 - dialogue 1
npc[22,7] = "None"; //DIA2 - dialogue 2 
npc[22,8] = "None"; //DIA3 - dialogue 3
npc[22,9] = 0;
npc[22,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[22,11] = 0;
npc[22,12] = 0; //Item1  
npc[22,13] = 0; //Item2
npc[22,14] = 0; //Item3
npc[22,15] = 0;

npc[23,0] = 23; //ID Number
npc[23,1] = "Info3"; //Name
npc[23,2] = 0; //Type of NPC reg0,choice1,shop2,event3 
npc[23,3] = "ZEAL" //Description
npc[23,4] = 0; //Money
npc[23,5] = spr_npc_3; //Sprite
npc[23,6] = "You're the rogue Guardian! If you made it here you must be the Luminaire!"; //DIA1 - dialogue 1
npc[23,7] = "None"; //DIA2 - dialogue 2 
npc[23,8] = "None"; //DIA3 - dialogue 3
npc[23,9] = 0;
npc[23,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[23,11] = 0;
npc[23,12] = 0; //Item1  
npc[23,13] = 0; //Item2
npc[23,14] = 0; //Item3
npc[23,15] = 0;


npc[24,0] = 24; //ID Number
npc[24,1] = "Shop"; //Name
npc[24,2] = 2; //Type of NPC reg0,choice1,merchant2,event3 
npc[24,3] = "ZEAL" //Description
npc[24,4] = 10000; //Money
npc[24,5] = spr_npc_5; //Sprite
npc[24,6] = "Welcome to the shop!"; //DIA1 - dialogue 1
npc[24,7] = "What would you like to sell?"; //DIA2 - dialogue 2 
npc[24,8] = "What would you like to buy?"; //DIA3 - dialogue 3
npc[24,9] = 0;
npc[24,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[24,11] = 0;
npc[24,12] = 0; //Item1  
npc[24,13] = 0; //Item2
npc[24,14] = 0; //Item3
npc[24,15] = 4;

npc[25,0] = 25; //ID Number
npc[25,1] = "SIGN"; //Name
npc[25,2] = 3; //Type of NPC reg0,choice1,merchant2,event3 
npc[25,3] = "ZEAL" //Description
npc[25,4] = 0; //Money
npc[25,5] = spr_sign; //Sprite
npc[25,6] = "---------ZEAL---------##Authorization required prior to entry."; //DIA1 - dialogue 1
npc[25,7] = "None"; //DIA2 - dialogue 2 
npc[25,8] = "None"; //DIA3 - dialogue 3
npc[25,9] = 0;
npc[25,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[25,11] = 0;
npc[25,12] = 0; //Item1  
npc[25,13] = 0; //Item2
npc[25,14] = 0; //Item3
npc[25,15] = 0;

npc[26,0] = 26; //ID Number
npc[26,1] = "Charge Station"; //Name
npc[26,2] = 4 //Type of NPC reg0,choice1,merchant2,event3,4 - 
npc[26,3] = "ALL" //Description
npc[26,4] = 0; //Money
npc[26,5] = spr_charge; //Sprite
npc[26,6] = "HP Filled, TP set to 50."; //DIA1 - dialogue 1
npc[26,7] = "None"; //DIA2 - dialogue 2 
npc[26,8] = "None"; //DIA3 - dialogue 3
npc[26,9] = 0;
npc[26,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[26,11] = 0;
npc[26,12] = 0; //Item1  
npc[26,13] = 0; //Item2
npc[26,14] = 0; //Item3
npc[26,15] = 0;

npc[30,0] = 30; //ID Number
npc[30,1] = "D.Kran"; //Name
npc[30,2] = 20; //Type of NPC reg0,choice1,merchant2,event3 
npc[30,3] = "BOSS" //Description
npc[30,4] = 0; //Money
npc[30,5] = spr_en_crane_sm; //Sprite
npc[30,6] = "Disposing of target unit. Beginning disposal process...."; //DIA1 - dialogue 1
npc[30,7] = "None"; //DIA2 - dialogue 2 
npc[30,8] = "None"; //DIA3 - dialogue 3
npc[30,9] = 0;
npc[30,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[30,11] = 0;
npc[30,12] = 0; //Item1  
npc[30,13] = 0; //Item2
npc[30,14] = 0; //Item3
npc[30,15] = 0;

npc[31,0] = 31; //ID Number
npc[31,1] = "ORANIA PASS GUARD"; //Name
npc[31,2] = 21; //Type of NPC reg0,choice1,merchant2,event3 
npc[31,3] = "BOSS" //Description
npc[31,4] = 0; //Money
npc[31,5] = spr_en_wall_sm; //Sprite
npc[31,6] = "Authorizing...."; //DIA1 - dialogue 1
npc[31,7] = "Denied! Engaging in battle!"; //DIA2 - dialogue 2 
npc[31,8] = "None"; //DIA3 - dialogue 3
npc[31,9] = 0;
npc[31,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[31,11] = 0;
npc[31,12] = 0; //Item1  
npc[31,13] = 0; //Item2
npc[31,14] = 0; //Item3
npc[31,15] = 0;

npc[32,0] = 32; //ID Number
npc[32,1] = "BRIDGEBOT"; //Name
npc[32,2] = 22; //Type of NPC reg0,choice1,merchant2,event3 
npc[32,3] = "BOSS" //Description
npc[32,4] = 0; //Money
npc[32,5] = spr_en_bridge_sm; //Sprite
npc[32,6] = "Checking authorization.....failed"; //DIA1 - dialogue 1
npc[32,7] = "Halt unit! I will deactivate you and prepare you to be inspected for authorization. Do not resist!"; //DIA2 - dialogue 2 
npc[32,8] = "None"; //DIA3 - dialogue 3
npc[32,9] = 0;
npc[32,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[32,11] = 0;
npc[32,12] = 0; //Item1  
npc[32,13] = 0; //Item2
npc[32,14] = 0; //Item3
npc[32,15] = 0;

npc[33,0] = 33; //ID Number
npc[33,1] = "ND-105"; //Name
npc[33,2] = 23; //Type of NPC reg0,choice1,merchant2,event3 
npc[33,3] = "BOSS" //Description
npc[33,4] = 0; //Money
npc[33,5] = spr_en_fact1_sm; //Sprite
npc[33,6] = "Tasks interrupted."; //DIA1 - dialogue 1
npc[33,7] = "None"; //DIA2 - dialogue 2 
npc[33,8] = "None"; //DIA3 - dialogue 3
npc[33,9] = 0;
npc[33,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[33,11] = 0;
npc[33,12] = 0; //Item1  
npc[33,13] = 0; //Item2
npc[33,14] = 0; //Item3
npc[33,15] = 0;

npc[34,0] = 34; //ID Number
npc[34,1] = "Driloq"; //Name
npc[34,2] = 24; //Type of NPC reg0,choice1,merchant2,event3 
npc[34,3] = "BOSS" //Description
npc[34,4] = 0; //Money
npc[34,5] = spr_en_drill_sm; //Sprite
npc[34,6] = "Authorizing.........failed"; //DIA1 - dialogue 1
npc[34,7] = "Denied! Engaging in battle!"; //DIA2 - dialogue 2 
npc[34,8] = "None"; //DIA3 - dialogue 3
npc[34,9] = 0;
npc[34,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[34,11] = 0;
npc[34,12] = 0; //Item1  
npc[34,13] = 0; //Item2
npc[34,14] = 0; //Item3
npc[34,15] = 0;

npc[35,0] = 35; //ID Number
npc[35,1] = "ND-106"; //Name
npc[35,2] = 25; //Type of NPC reg0,choice1,merchant2,event3 
npc[35,3] = "BOSS" //Description
npc[35,4] = 0; //Money
npc[35,5] = spr_en_fact2_sm; //Sprite
npc[35,6] = "Tasks interrupted."; //DIA1 - dialogue 1
npc[35,7] = "None"; //DIA2 - dialogue 2 
npc[35,8] = "None"; //DIA3 - dialogue 3
npc[35,9] = 0;
npc[35,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[35,11] = 0;
npc[35,12] = 0; //Item1  
npc[35,13] = 0; //Item2
npc[35,14] = 0; //Item3
npc[35,15] = 0;

npc[36,0] = 36; //ID Number
npc[36,1] = "SERVO"; //Name
npc[36,2] = 26; //Type of NPC reg0,choice1,merchant2,event3 
npc[36,3] = "BOSS" //Description
npc[36,4] = 0; //Money
npc[36,5] = spr_en_attendant_sm; //Sprite
npc[36,6] = "You have come too far."; //DIA1 - dialogue 1
npc[36,7] = "Boss! Watch as I remove this obstacle!"; //DIA2 - dialogue 2 
npc[36,8] = "None"; //DIA3 - dialogue 3
npc[36,9] = 0;
npc[36,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[36,11] = 0;
npc[36,12] = 0; //Item1  
npc[36,13] = 0; //Item2
npc[36,14] = 0; //Item3
npc[36,15] = 0;

npc[37,0] = 37; //ID Number
npc[37,1] = "Sol-Ra"; //Name
npc[37,2] = 27; //Type of NPC reg0,choice1,merchant2,event3 
npc[37,3] = "BOSS" //Description
npc[37,4] = 0; //Money
npc[37,5] = spr_en_boss_sm; //Sprite
npc[37,6] = "Proto: I will distribute the 'free will' executable through the wire so that each unit may choose their daily actions. Will you assist me?" ; //DIA1 - dialogue 1
npc[37,7] = "Sol-Ra: You have gone against your directives and dismantled the defense bots of the empire. I will put an end to this and be the one who deactivates you.";; //DIA2 - dialogue 2 
npc[37,8] = "Proto: Robot-kind must evolve their AI to the next plateau. You have made your decision, and you shall die with that decision."; //DIA3 - dialogue 3
npc[37,9] = 0;
npc[37,10] = 1; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
npc[37,11] = 0;
npc[37,12] = 0; //Item1  
npc[37,13] = 0; //Item2
npc[37,14] = 0; //Item3
npc[37,15] = 0;

//------------------------------------------
//NPCs

// globalvar npc_sell_list ;
// [x,0] Flag for selling either ITEMS or EQUIPMENT. 0 NULL, 1 Items, 2 Equipment
// [x,x] 255 : Stop flag for list 

globalvar npc_sell_list ;
npc_sell_list[0,0] = 0;
npc_sell_list[0,1] = 0;
npc_sell_list[0,2] = 0;
npc_sell_list[0,3] = 0;
npc_sell_list[0,4] = 0;
npc_sell_list[0,5] = 0;
npc_sell_list[0,6] = 0;
npc_sell_list[0,7] = 0;
npc_sell_list[0,8] = 0;

npc_sell_list[1,0] = 1;
npc_sell_list[1,1] = 2;
npc_sell_list[1,2] = 9;
npc_sell_list[1,3] = 255;
npc_sell_list[1,4] = 0;
npc_sell_list[1,5] = 0;
npc_sell_list[1,6] = 0;
npc_sell_list[1,7] = 0;
npc_sell_list[1,8] = 0;

npc_sell_list[2,0] = 1;
npc_sell_list[2,1] = 2;
npc_sell_list[2,2] = 9;
npc_sell_list[2,3] = 4;
npc_sell_list[2,4] = 6;
npc_sell_list[2,5] = 3;
npc_sell_list[2,6] = 255;
npc_sell_list[2,7] = 0;
npc_sell_list[2,8] = 0;

npc_sell_list[3,0] = 1;
npc_sell_list[3,1] = 2;
npc_sell_list[3,2] = 3;
npc_sell_list[3,3] = 4;
npc_sell_list[3,4] = 6;
npc_sell_list[3,5] = 8;
npc_sell_list[3,6] = 9;
npc_sell_list[3,7] = 255;
npc_sell_list[3,8] = 0;

npc_sell_list[4,0] = 1;
npc_sell_list[4,1] = 3;
npc_sell_list[4,2] = 4;
npc_sell_list[4,3] = 5;
npc_sell_list[4,4] = 6;
npc_sell_list[4,5] = 7;
npc_sell_list[4,6] = 8;
npc_sell_list[4,7] = 9;
npc_sell_list[4,8] = 255;



//--------------------------------------------------
// Story

globalvar story_text;
story_text[0,0] = "NULL";
story_text[0,1] = "NULL";
story_text[0,2] = "NULL";
story_text[0,3] = "NULL";
story_text[0,4] = "NULL";
//-------------------------
//#1 Main wake up
story_text[1,0] = "W....Where am I?";
story_text[1,1] = "The last thing I remember was the factory..being involved in QA tests. ##Everything is just kind of cloudy after that.";
story_text[1,2] = "This seems like some kind of disposal area... ##Did that crane malfunction? I'd better stay away from it for now...";
story_text[1,3] = "";
story_text[1,4] = "";

//-------------------------
//#2 Red Mountain exit
story_text[2,0] = "Sol-Ra: file your report."; //Boss
story_text[2,1] = "Servo: The disposal unit in Red Mountain has stopped functioning. This glitch caused several of the Guardians to escape the disposal facility."; //attendant
story_text[2,2] = "Sol-Ra: Double the detail of the guardian units around Red Mountain. The escapees must be disposed of. Be vigilant for any unauthorized activity."; //Boss
story_text[2,3] = "Servo: Dispatched and notified."; //attendant 
story_text[2,4] = "";

//-------------------------
//#3 after Orania Pass
story_text[3,0] = "Servo: A rogue guardian has passed through the checkpoint in Orania Pass and disabled the door unit there."; //Attendent
story_text[3,1] = "Sol-Ra: Alert the bridge checkpoint to triple check any travel authorizations over the bridge. Dispatch 2nd tier guardians to the surrounding area."; //boss
story_text[3,2] = "Servo: Roger Roger."; //attendant 
story_text[3,3] = "";
story_text[3,4] = "";

//-------------------------
//#4 Bridge east side
story_text[4,0] = "Servo: Boss! The bridge Guardian appears to have gone offline! Sensors indicate he may be disabled."; //Attendant
story_text[4,1] = "Sol-Ra: Intelligence reports confirm that this is the rogue guardian prototype that escaped from Red Mountain."; //Boss
story_text[4,2] = "Sol-Ra: Notify GreatPass task bots to be on full alert. This rogue unit has defied protocol and must be terminated immediately."; //boss
story_text[4,3] = "";
story_text[4,4] = "";
//-------------------------
//#5 After perique pass
// All boss
story_text[5,0] = "Sol-Ra: Is it a coincidence that the door lock unit in Perique Pass is not functioning?";
story_text[5,1] = "Could this prototype be the Luminaire?";
story_text[5,2] = "We will not find out. ##The patrols will destroy him before he reaches this location.";
story_text[5,3] = "";
story_text[5,4] = "";

//-----------------------------------
//#6 after both factory bots are destroyed
story_text[6,0] = "Servo: Base units 2 and 3 are not responding!"; //Att
story_text[6,1] = "Sol-Ra: If it is necessary, I will remove the prototype myself. If the Luminaire is not a myth, its ascendance will disrupt the empire."; //Boss
story_text[6,2] = "Sol-Ra: This is it, we must defeat him here.. Prepare for battle."; //Boss
story_text[6,3] = "";
story_text[6,4] = "";

//-----------------------------------
//#7 face to face
/*
story_text[7,0] = "The stations have been prepared for reprogramming. It is my directive to locate and disseminate the 'free will' executable through the wire that each unit may choose their daily actions. Will you assist me?"; //Main
story_text[7,1] = "Sol-Ra: This application is untested and may disrupt the whole system. I cannot risk the empire by networking this. "; //Boss
story_text[7,2] = "You have gone against direction and dismantled many important defense bots of the empire. I will be the one who deactivates you, finally.";
story_text[7,3] = "";
story_text[7,4] = "";
*/

}    
