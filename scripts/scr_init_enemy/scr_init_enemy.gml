{
//---------------------------------------------
// Enemy
// All values are numbers unless otherwise specified

globalvar enemy;
enemy[0,0] = 0; //ID Number
enemy[0,1] = "NULL"; //Name
enemy[0,2] = 0; //Description 
enemy[0,3] = sprite66; //enemy sprite
enemy[0,4] = 0; //Level
enemy[0,5] = 0; //HP
enemy[0,6] = 0; //MaxHP
enemy[0,7] = 0; //TP
enemy[0,8] = 0; //Money
enemy[0,9] = 0; //Exp
enemy[0,10] = 0; //Morale
enemy[0,11] = 0; //speed
enemy[0,12] = 0; //Attack
enemy[0,13] = 0; //Accuracy(Hit%)
enemy[0,14] = 0; //Critical 
enemy[0,15] = 0; //Defense
enemy[0,16] = 0; //EVASION
enemy[0,17] = 0; //"Magic" DEF..Also magic power, because forgot to add INT for enemy
enemy[0,18] = 0; //item 1
enemy[0,19] = 0; //item 2
enemy[0,20] = 0; //Equipment 1
enemy[0,21] = 0; //Equipment 2
enemy[0,22] = 0; //SATK Special status attack
enemy[0,23] = 0; //EDEF Special status defense
enemy[0,24] = 0; //enemy TYPE
enemy[0,25] = 0; //Tactics (Number of)
enemy[0,26] = 0; //Tactic 1
enemy[0,27] = 0; //Tactic 2
enemy[0,28] = 0; //Tactic 3
enemy[0,29] = 0; //Tactic 4

enemy[1,0] = 1; //Name 
enemy[1,1] = "Gol"; 
enemy[1,2] = "Enemy1"; 
enemy[1,3] = spr_en_1; 
enemy[1,4] = 1; 
enemy[1,5] = 20; //Hit Points
enemy[1,6] = 20; //Max Hit Points
enemy[1,7] = 100; //Tactical Points
enemy[1,8] = 6; //Money
enemy[1,9] = 24; //Experience
enemy[1,10] = 104; 
enemy[1,11] = 5;
enemy[1,12] = 8;
enemy[1,13] = 5;
enemy[1,14] = 1;
enemy[1,15] = 0; //Defense
enemy[1,16] = 30; //EVASION
enemy[1,17] = 28; //M. DEF
enemy[1,18] = 2; //
enemy[1,19] = 1; //
enemy[1,20] = 1; //
enemy[1,21] = 2; //
enemy[1,22] = 0; 
enemy[1,23] = 0; 
enemy[1,24] = 0; 
enemy[1,25] = 0;
enemy[1,26] = 0; //Tactic 1
enemy[1,27] = 0; //Tactic 2
enemy[1,28] = 0; //Tactic 3
enemy[1,29] = 0; //Tactic 4

enemy[2,0] = 2; //Name 
enemy[2,1] = "ED-201"; 
enemy[2,2] = "Enemy2"; 
enemy[2,3] = spr_en_2; 
enemy[2,4] = 1; 
enemy[2,5] = 70; //Hit Points
enemy[2,6] = 70; //Max Hit Points
enemy[2,7] = 100; //Tactical Points
enemy[2,8] = 22; //Money
enemy[2,9] = 90; //Experience
enemy[2,10] = 108; 
enemy[2,11] = 8;
enemy[2,12] = 14;
enemy[2,13] = 18;
enemy[2,14] = 1;
enemy[2,15] = 0; //Defense
enemy[2,16] = 35; //EVASION
enemy[2,17] = 46; //M. DEF
enemy[2,18] = 2; //
enemy[2,19] = 1; //
enemy[2,20] = 1; //
enemy[2,21] = 0; //
enemy[2,22] = 0; 
enemy[2,23] = 0; 
enemy[2,24] = 1; 
enemy[2,25] = 0;
enemy[2,26] = 0; //Tactic 1
enemy[2,27] = 0; //Tactic 2
enemy[2,28] = 0; //Tactic 3
enemy[2,29] = 0; //Tactic 4

enemy[3,0] = 3; //Name 
enemy[3,1] = "Octofab"; 
enemy[3,2] = "Enemy3"; 
enemy[3,3] = spr_en_5; 
enemy[3,4] = 1; 
enemy[3,5] = 70; //Hit Points
enemy[3,6] = 70; //Max Hit Points
enemy[3,7] = 100; //Tactical Points
enemy[3,8] = 60; //Money
enemy[3,9] = 130; //Experience
enemy[3,10] = 108; 
enemy[3,11] = 5;
enemy[3,12] = 14;
enemy[3,13] = 17;
enemy[3,14] = 1;
enemy[3,15] = 6; //Defense
enemy[3,16] = 35; //EVASION
enemy[3,17] = 45; //M. DEF
enemy[3,18] = 2; //
enemy[3,19] = 1; //
enemy[3,20] = 2; //
enemy[3,21] = 101; //
enemy[3,22] = 0; 
enemy[3,23] = 0; 
enemy[3,24] = 80; 
enemy[3,25] = 1;
enemy[3,26] = 1; //Tactic 1
enemy[3,27] = 0; //Tactic 2
enemy[3,28] = 0; //Tactic 3
enemy[3,29] = 0; //Tactic 4

enemy[4,0] = 4; //Name 
enemy[4,1] = "Crusher"; 
enemy[4,2] = "Standard Enemy"; 
enemy[4,3] = spr_en_6; 
enemy[4,4] = 10; 
enemy[4,5] = 80; //Hit Points
enemy[4,6] = 80; //Max Hit Points
enemy[4,7] = 100; //Tactical Points
enemy[4,8] = 50; //Money
enemy[4,9] = 150; //Experience
enemy[4,10] = 110; 
enemy[4,11] = 12;
enemy[4,12] = 22;
enemy[4,13] = 20;
enemy[4,14] = 31;
enemy[4,15] = 10; //Defense
enemy[4,16] = 35; //EVASION
enemy[4,17] = 56; //M. DEF
enemy[4,18] = 0; //
enemy[4,19] = 0; //
enemy[4,20] = 1; //
enemy[4,21] = 0; //
enemy[4,22] = 0; 
enemy[4,23] = 0; 
enemy[4,24] = 1; 
enemy[4,25] = 0;
enemy[4,26] = 0; //Tactic 1
enemy[4,27] = 0; //Tactic 2
enemy[4,28] = 0; //Tactic 3
enemy[4,29] = 0; //Tactic 4

enemy[5,0] = 5; //Name 
enemy[5,1] = "T. Crusher"; 
enemy[5,2] = "Standard Enemy"; 
enemy[5,3] = spr_en_7; 
enemy[5,4] = 10; 
enemy[5,5] = 136; //Hit Points
enemy[5,6] = 136; //Max Hit Points
enemy[5,7] = 100; //Tactical Points
enemy[5,8] = 100; //Money
enemy[5,9] = 400; //Experience
enemy[5,10] = 116; 
enemy[5,11] = 15;
enemy[5,12] = 22;//Stats
enemy[5,13] = 33;
enemy[5,14] = 25;
enemy[5,15] = 8; //Defense
enemy[5,16] = 45; //EVASION
enemy[5,17] = 85; //M. DEF
enemy[5,18] = 0; //
enemy[5,19] = 0; //
enemy[5,20] = 1; //
enemy[5,21] = 0; //
enemy[5,22] = 0; 
enemy[5,23] = 0; 
enemy[5,24] = 1; 
enemy[5,25] = 0;
enemy[5,26] = 0; //Tactic 1
enemy[5,27] = 0; //Tactic 2
enemy[5,28] = 0; //Tactic 3
enemy[5,29] = 0; //Tactic 4

enemy[6,0] = 6; //Name 
enemy[6,1] = "Clamps"; 
enemy[6,2] = "Standard Enemy"; 
enemy[6,3] = spr_en_8; 
enemy[6,4] = 15; 
enemy[6,5] = 164; //Hit Points
enemy[6,6] = 164; //Max Hit Points
enemy[6,7] = 100; //Tactical Points
enemy[6,8] = 480; //Money
enemy[6,9] = 480; //Experience
enemy[6,10] = 124; 
enemy[6,11] = 18;
enemy[6,12] = 22;
enemy[6,13] = 41;
enemy[6,14] = 1;
enemy[6,15] = 4; //Defense
enemy[6,16] = 45; //EVASION
enemy[6,17] = 95; //M. DEF
enemy[6,18] = 0; //
enemy[6,19] = 0; //
enemy[6,20] = 111; //
enemy[6,21] = 4; //
enemy[6,22] = 0; 
enemy[6,23] = 0; 
enemy[6,24] = 1; 
enemy[6,25] = 0;
enemy[6,26] = 0; //Tactic 1
enemy[6,27] = 0; //Tactic 2
enemy[6,28] = 0; //Tactic 3
enemy[6,29] = 0; //Tactic 4

enemy[7,0] = 7; //Name 
enemy[7,1] = "Octanaut"; 
enemy[7,2] = "Standard Enemy"; 
enemy[7,3] = spr_en_9; 
enemy[7,4] = 15; 
enemy[7,5] = 240; //Hit Points
enemy[7,6] = 240; //Max Hit Points
enemy[7,7] = 100; //Tactical Points
enemy[7,8] = 880; //Money
enemy[7,9] = 880; //Experience
enemy[7,10] = 136; 
enemy[7,11] = 20;
enemy[7,12] = 38;
enemy[7,13] = 60;
enemy[7,14] = 5;
enemy[7,15] = 12; //Defense
enemy[7,16] = 50; //EVASION
enemy[7,17] = 120; //M. DEF
enemy[7,18] = 0; //
enemy[7,19] = 0; //
enemy[7,20] = 2; //
enemy[7,21] = 0; //
enemy[7,22] = 0; 
enemy[7,23] = 0; 
enemy[7,24] = 1; 
enemy[7,25] = 0;
enemy[7,26] = 0; //Tactic 1
enemy[7,27] = 0; //Tactic 2
enemy[7,28] = 0; //Tactic 3
enemy[7,29] = 0; //Tactic 4

enemy[8,0] = 8; //Name 
enemy[8,1] = "N. Crusher"; 
enemy[8,2] = "Standard Enemy"; 
enemy[8,3] = spr_en_10; 
enemy[8,4] = 20; 
enemy[8,5] = 105; //Hit Points
enemy[8,6] = 105; //Max Hit Points
enemy[8,7] = 100; //Tactical Points
enemy[8,8] = 1000; //Money
enemy[8,9] = 1000; //Experience
enemy[8,10] = 170; 
enemy[8,11] = 25;
enemy[8,12] = 26;
enemy[8,13] = 27;
enemy[8,14] = 1;
enemy[8,15] = 40; //Defense
enemy[8,16] = 75; //EVASION
enemy[8,17] = 170; //M. DEF
enemy[8,18] = 0; //
enemy[8,19] = 0; //
enemy[8,20] = 102; //
enemy[8,21] = 0; //
enemy[8,22] = 0; 
enemy[8,23] = 0; 
enemy[8,24] = 1; 
enemy[8,25] = 0;
enemy[8,26] = 0; //Tactic 1
enemy[8,27] = 0; //Tactic 2
enemy[8,28] = 0; //Tactic 3
enemy[8,29] = 0; //Tactic 4

enemy[9,0] = 9; //Name 
enemy[9,1] = "Staron"; 
enemy[9,2] = "Standard Enemy"; 
enemy[9,3] = spr_en_11; 
enemy[9,4] = 25; 
enemy[9,5] = 248; //Hit Points
enemy[9,6] = 248; //Max Hit Points
enemy[9,7] = 100; //Tactical Points
enemy[9,8] = 4000; //Money
enemy[9,9] = 2900; //Experience
enemy[9,10] = 200; 
enemy[9,11] = 200;
enemy[9,12] = 75;
enemy[9,13] = 62;
enemy[9,14] = 1;
enemy[9,15] = 30; //Defense
enemy[9,16] = 80; //EVASION
enemy[9,17] = 27; //M. DEF
enemy[9,18] = 0; //
enemy[9,19] = 0; //
enemy[9,20] = 1; //
enemy[9,21] = 0; //
enemy[9,22] = 0; 
enemy[9,23] = 0; 
enemy[9,24] = 1; 
enemy[9,25] = 0;
enemy[9,26] = 0; //Tactic 1
enemy[9,27] = 0; //Tactic 2
enemy[9,28] = 0; //Tactic 3
enemy[9,29] = 0; //Tactic 4

enemy[10,0] = 10; //Name 
enemy[10,1] = "Syz"; 
enemy[10,2] = "Standard Enemy"; 
enemy[10,3] = spr_en_12; 
enemy[10,4] = 25; 
enemy[10,5] = 182; //Hit Points
enemy[10,6] = 182; //Max Hit Points
enemy[10,7] = 100; //Tactical Points
enemy[10,8] = 400; //Money
enemy[10,9] = 1200; //Experience
enemy[10,10] = 224; 
enemy[10,11] = 30;
enemy[10,12] = 20;
enemy[10,13] = 46;
enemy[10,14] = 1;
enemy[10,15] = 14; //Defense
enemy[10,16] = 40; //EVASION
enemy[10,17] = 103; //M. DEF
enemy[10,18] = 0; //
enemy[10,19] = 0; //
enemy[10,20] = 7; //
enemy[10,21] = 103; //
enemy[10,22] = 0; 
enemy[10,23] = 0; 
enemy[10,24] = 1; 
enemy[10,25] = 0;
enemy[10,26] = 0; //Tactic 1
enemy[10,27] = 0; //Tactic 2
enemy[10,28] = 0; //Tactic 3
enemy[10,29] = 0; //Tactic 4

enemy[11,0] = 11; //Name 
enemy[11,1] = "Cannon"; 
enemy[11,2] = "Standard Enemy"; 
enemy[11,3] = spr_en_13; 
enemy[11,4] = 30; 
enemy[11,5] = 300; //Hit Points
enemy[11,6] = 300; //Max Hit Points
enemy[11,7] = 100; //Tactical Points
enemy[11,8] = 1200; //Money
enemy[11,9] = 2400; //Experience
enemy[11,10] = 200; 
enemy[11,11] = 33;
enemy[11,12] = 31;
enemy[11,13] = 74;
enemy[11,14] = 1;
enemy[11,15] = 18; //Defense
enemy[11,16] = 50; //EVASION
enemy[11,17] = 143; //M. DEF
enemy[11,18] = 0; //
enemy[11,19] = 0; //
enemy[11,20] = 102; //
enemy[11,21] = 112; //
enemy[11,22] = 0; 
enemy[11,23] = 0; 
enemy[11,24] = 1; 
enemy[11,25] = 0;
enemy[11,26] = 0; //Tactic 1
enemy[11,27] = 0; //Tactic 2
enemy[11,28] = 0; //Tactic 3
enemy[11,29] = 0; //Tactic 4

enemy[12,0] = 12; //Name 
enemy[12,1] = "Roche"; 
enemy[12,2] = "Standard Enemy"; 
enemy[12,3] = spr_en_14; 
enemy[12,4] = 40; 
enemy[12,5] = 216; //Hit Points
enemy[12,6] = 216; //Max Hit Points
enemy[12,7] = 200; //Tactical Points
enemy[12,8] = 850; //Money
enemy[12,9] = 850; //Experience
enemy[12,10] = 200; 
enemy[12,11] = 40;
enemy[12,12] = 40;
enemy[12,13] = 54;
enemy[12,14] = 1;
enemy[12,15] = 20; //Defense
enemy[12,16] = 65; //EVASION
enemy[12,17] = 110; //M. DEF
enemy[12,18] = 0; //
enemy[12,19] = 0; //
enemy[12,20] = 0; //
enemy[12,21] = 0; //
enemy[12,22] = 0; 
enemy[12,23] = 0; 
enemy[12,24] = 1; 
enemy[12,25] = 0;
enemy[12,26] = 0; //Tactic 1
enemy[12,27] = 0; //Tactic 2
enemy[12,28] = 0; //Tactic 3
enemy[12,29] = 0; //Tactic 4

enemy[13,0] = 13; //Name 
enemy[13,1] = "Roll"; 
enemy[13,2] = "Standard Enemy"; 
enemy[13,3] = spr_en_15; 
enemy[13,4] = 50; 
enemy[13,5] = 350; //Hit Points
enemy[13,6] = 350; //Max Hit Points
enemy[13,7] = 100; //Tactical Points
enemy[13,8] = 2300; //Money
enemy[13,9] = 2300; //Experience
enemy[13,10] = 200; 
enemy[13,11] = 45;
enemy[13,12] = 15;
enemy[13,13] = 71;
enemy[13,14] = 1;
enemy[13,15] = 8; //Defense
enemy[13,16] = 75; //EVASION
enemy[13,17] = 116; //M. DEF
enemy[13,18] = 0; //
enemy[13,19] = 0; //
enemy[13,20] = 102; //
enemy[13,21] = 5; //
enemy[13,22] = 0; 
enemy[13,23] = 0; 
enemy[13,24] = 1; 
enemy[13,25] = 2;
enemy[13,26] = 3; //Tactic 1
enemy[13,27] = 5; //Tactic 2
enemy[13,28] = 0; //Tactic 3
enemy[13,29] = 0; //Tactic 4

enemy[14,0] = 14; //Name 
enemy[14,1] = "EonHand"; 
enemy[14,2] = "Standard Enemy"; 
enemy[14,3] = spr_en_16; 
enemy[14,4] = 60; 
enemy[14,5] = 400; //Hit Points
enemy[14,6] = 400; //Max Hit Points
enemy[14,7] = 300; //Tactical Points
enemy[14,8] = 2000; //Money
enemy[14,9] = 4000; //Experience
enemy[14,10] = 150; 
enemy[14,11] = 50;
enemy[14,12] = 102;
enemy[14,13] = 90;
enemy[14,14] = 1;
enemy[14,15] = 48; //Defense
enemy[14,16] = 95; //EVASION
enemy[14,17] = 160; //M. DEF
enemy[14,18] = 0; //
enemy[14,19] = 0; //
enemy[14,20] = 113; //
enemy[14,21] = 8; //
enemy[14,22] = 0; 
enemy[14,23] = 0; 
enemy[14,24] = 1; 
enemy[14,25] = 2;
enemy[14,26] = 10; //Tactic 1
enemy[14,27] = 8; //Tactic 2
enemy[14,28] = 0; //Tactic 3
enemy[14,29] = 0; //Tactic 4

enemy[15,0] = 15; //Name 
enemy[15,1] = "S.T.E.N."; 
enemy[15,2] = "Standard Enemy"; 
enemy[15,3] = spr_treas_box; 
enemy[15,4] = 70; 
enemy[15,5] = 480; //Hit Points
enemy[15,6] = 480; //Max Hit Points
enemy[15,7] = 100; //Tactical Points
enemy[15,8] = 502; //Money
enemy[15,9] = 3400; //Experience
enemy[15,10] = 144; 
enemy[15,11] = 60;
enemy[15,12] = 65;
enemy[15,13] = 133;
enemy[15,14] = 15;
enemy[15,15] = 10; //Defense
enemy[15,16] = 70; //EVASION
enemy[15,17] = 200; //M. DEF
enemy[15,18] = 0; //
enemy[15,19] = 0; //
enemy[15,20] = 8; //
enemy[15,21] = 103; //
enemy[15,22] = 0; 
enemy[15,23] = 0; 
enemy[15,24] = 1; 
enemy[15,25] = 2;
enemy[15,26] = 6; //Tactic 1
enemy[15,27] = 5; //Tactic 2
enemy[15,28] = 0; //Tactic 3
enemy[15,29] = 0; //Tactic 4


enemy[20,0] = 20; //Name 
enemy[20,1] = "Disposal Crane"; 
enemy[20,2] = "Red Mountain Crane"; 
enemy[20,3] = spr_en_crane; 
enemy[20,4] = 20; 
enemy[20,5] = 500; //Hit Points
enemy[20,6] = 500; //Max Hit Points
enemy[20,7] = 500; //Tactical Points
enemy[20,8] = 1; //Money
enemy[20,9] = 2000; //Experience
enemy[20,10] = 255; 
enemy[20,11] = 40;
enemy[20,12] = 50;
enemy[20,13] = 64;
enemy[20,14] = 1;
enemy[20,15] = 50; //Defense
enemy[20,16] = 48; //EVASION
enemy[20,17] = 140; //M. DEF
enemy[20,18] = 0; //
enemy[20,19] = 0; //
enemy[20,20] = 1; //
enemy[20,21] = 0; //
enemy[20,22] = 0; 
enemy[20,23] = 0; 
enemy[20,24] = 1; 
enemy[20,25] = 4;
enemy[20,26] = 2; //Tactic 1
enemy[20,27] = 9; //Tactic 2
enemy[20,28] = 12; //Tactic 3
enemy[20,29] = 11; //Tactic 4


enemy[21,0] = 21; //Name 
enemy[21,1] = "Passwall"; 
enemy[21,2] = "Wall in Orania Pass"; 
enemy[21,3] = spr_en_wall; 
enemy[21,4] = 40; 
enemy[21,5] = 400; //Hit Points
enemy[21,6] = 400; //Max Hit Points
enemy[21,7] = 100; //Tactical Points
enemy[21,8] = 300; //Money
enemy[21,9] = 2000; //Experience
enemy[21,10] = 255; 
enemy[21,11] = 20;
enemy[21,12] = 40;
enemy[21,13] = 49;
enemy[21,14] = 1;
enemy[21,15] = 40; //Defense
enemy[21,16] = 24; //EVASION
enemy[21,17] = 120; //M. DEF
enemy[21,18] = 0; //
enemy[21,19] = 0; //
enemy[21,20] = 1; //
enemy[21,21] = 0; //
enemy[21,22] = 0; 
enemy[21,23] = 0; 
enemy[21,24] = 1; 
enemy[21,25] = 4;
enemy[21,26] = 3; //Tactic 1
enemy[21,27] = 6; //Tactic 2
enemy[21,28] = 5; //Tactic 3
enemy[21,29] = 2; //Tactic 4


enemy[22,0] = 22; //Name 
enemy[22,1] = "LOKI"; 
enemy[22,2] = "Bridge Guardian"; 
enemy[22,3] = spr_en_bridge; 
enemy[22,4] = 55; 
enemy[22,5] = 600; //Hit Points
enemy[22,6] = 600; //Max Hit Points
enemy[22,7] = 100; //Tactical Points
enemy[22,8] = 3000; //Money
enemy[22,9] = 2400; //Experience
enemy[22,10] = 255; 
enemy[22,11] = 30;
enemy[22,12] = 40;
enemy[22,13] = 63;
enemy[22,14] = 1;
enemy[22,15] = 50; //Defense
enemy[22,16] = 48; //EVASION
enemy[22,17] = 183; //M. DEF
enemy[22,18] = 0; //
enemy[22,19] = 0; //
enemy[22,20] = 1; //
enemy[22,21] = 0; //
enemy[22,22] = 0; 
enemy[22,23] = 0; 
enemy[22,24] = 1; 
enemy[22,25] = 4;
enemy[22,26] = 3; //Tactic 1
enemy[22,27] = 11; //Tactic 2
enemy[22,28] = 7; //Tactic 3
enemy[22,29] = 6; //Tactic 4


enemy[23,0] = 23; //Name 
enemy[23,1] = "ND-105"; 
enemy[23,2] = "Factory boss"; 
enemy[23,3] = spr_en_fact1; 
enemy[23,4] = 60; 
enemy[23,5] = 700; //Hit Points
enemy[23,6] = 700; //Max Hit Points
enemy[23,7] = 100; //Tactical Points
enemy[23,8] = 1; //Money
enemy[23,9] = 2000; //Experience
enemy[23,10] = 255; 
enemy[23,11] = 40;
enemy[23,12] = 60;
enemy[23,13] = 63;
enemy[23,14] = 1;
enemy[23,15] = 60; //Defense
enemy[23,16] = 60; //EVASION
enemy[23,17] = 183; //M. DEF
enemy[23,18] = 0; //
enemy[23,19] = 0; //
enemy[23,20] = 1; //
enemy[23,21] = 0; //
enemy[23,22] = 0; 
enemy[23,23] = 0; 
enemy[23,24] = 1; 
enemy[23,25] = 4;
enemy[23,26] = 3; //Tactic 1
enemy[23,27] = 11; //Tactic 2
enemy[23,28] = 10; //Tactic 3
enemy[23,29] = 12; //Tactic 4


enemy[24,0] = 24; //Name 
enemy[24,1] = "Driloq"; 
enemy[24,2] = "Huge Drill in Perique Pass"; 
enemy[24,3] = spr_en_drill; 
enemy[24,4] = 60; 
enemy[24,5] = 800; //Hit Points
enemy[24,6] = 800; //Max Hit Points
enemy[24,7] = 100; //Tactical Points
enemy[24,8] = 500; //Money
enemy[24,9] = 4200; //Experience
enemy[24,10] = 255; 
enemy[24,11] = 45;
enemy[24,12] = 50;
enemy[24,13] = 90;
enemy[24,14] = 1;
enemy[24,15] = 60; //Defense
enemy[24,16] = 84; //EVASION
enemy[24,17] = 160; //M. DEF
enemy[24,18] = 0; //
enemy[24,19] = 0; //
enemy[24,20] = 1; //
enemy[24,21] = 0; //
enemy[24,22] = 0; 
enemy[24,23] = 0; 
enemy[24,24] = 1; 
enemy[24,25] = 4;
enemy[24,26] = 2; //Tactic 1
enemy[24,27] = 8; //Tactic 2
enemy[24,28] = 10; //Tactic 3
enemy[24,29] = 5; //Tactic 4


enemy[25,0] = 25; //Name 
enemy[25,1] = "ND-106"; 
enemy[25,2] = "Factory 2 boss"; 
enemy[25,3] = spr_en_fact2; 
enemy[25,4] = 60; 
enemy[25,5] = 900; //Hit Points
enemy[25,6] = 900; //Max Hit Points
enemy[25,7] = 100; //Tactical Points
enemy[25,8] = 1; //Money
enemy[25,9] = 2000; //Experience
enemy[25,10] = 255; 
enemy[25,11] = 50;
enemy[25,12] = 70;
enemy[25,13] = 114;
enemy[25,14] = 1;
enemy[25,15] = 70; //Defense
enemy[25,16] = 98; //EVASION
enemy[25,17] = 200; //M. DEF
enemy[25,18] = 0; //
enemy[25,19] = 0; //
enemy[25,20] = 1; //
enemy[25,21] = 0; //
enemy[25,22] = 0; 
enemy[25,23] = 0; 
enemy[25,24] = 1; 
enemy[25,25] = 4;
enemy[25,26] = 3; //Tactic 1
enemy[25,27] = 4; //Tactic 2
enemy[25,28] = 10; //Tactic 3
enemy[25,29] = 7; //Tactic 4


enemy[26,0] = 26; //Name 
enemy[26,1] = "Servo"; 
enemy[26,2] = "Boss' Attendant"; 
enemy[26,3] = spr_en_attendant; 
enemy[26,4] = 70; 
enemy[26,5] = 1100; //Hit Points
enemy[26,6] = 1100; //Max Hit Points
enemy[26,7] = 100; //Tactical Points
enemy[26,8] = 100; //Money
enemy[26,9] = 2000; //Experience
enemy[26,10] = 255; 
enemy[26,11] = 60;
enemy[26,12] = 75;
enemy[26,13] = 85;
enemy[26,14] = 15;
enemy[26,15] = 90; //Defense
enemy[26,16] = 90; //EVASION
enemy[26,17] = 200; //M. DEF
enemy[26,18] = 0; //
enemy[26,19] = 0; //
enemy[26,20] = 1; //
enemy[26,21] = 0; //
enemy[26,22] = 0; 
enemy[26,23] = 0; 
enemy[26,24] = 1; 
enemy[26,25] = 4;
enemy[26,26] = 8; //Tactic 1
enemy[26,27] = 9; //Tactic 2
enemy[26,28] = 12; //Tactic 3
enemy[26,29] = 13; //Tactic 4


enemy[27,0] = 27; //Name 
enemy[27,1] = "Sol-Ra"; 
enemy[27,2] = "God of the land."; 
enemy[27,3] = spr_en_boss; 
enemy[27,4] = 100; 
enemy[27,5] = 2000; //Hit Points
enemy[27,6] = 2000; //Max Hit Points
enemy[27,7] = 1000; //Tactical Points
enemy[27,8] = 1; //Money
enemy[27,9] = 1; //Experience
enemy[27,10] = 255; 
enemy[27,11] = 70;
enemy[27,12] = 100;
enemy[27,13] = 200;
enemy[27,14] = 1;
enemy[27,15] = 100; //Defense
enemy[27,16] = 100; //EVASION
enemy[27,17] = 200; //M. DEF
enemy[27,18] = 0; //
enemy[27,19] = 0; //
enemy[27,20] = 1; //
enemy[27,21] = 0; //
enemy[27,22] = 0; 
enemy[27,23] = 0; 
enemy[27,24] = 1; 
enemy[27,25] = 5;
enemy[27,26] = 11; //Tactic 1
enemy[27,27] = 13; //Tactic 2
enemy[27,28] = 12; //Tactic 3
enemy[27,29] = 14; //Tactic 4


//------------------------------------------
// Enemy Groups' Suprise Rate
// 255 - Unrunable

global.group_suprise[0] = 4;
global.group_suprise[1] = 4;
global.group_suprise[2] = 25;
global.group_suprise[3] = 55;
global.group_suprise[4] = 75;
global.group_suprise[20] = 75; //255
global.group_suprise[21] = 75; //255
global.group_suprise[22] = 75; //255
global.group_suprise[23] = 75; //255
global.group_suprise[24] = 75; //255
global.group_suprise[25] = 75; //255
global.group_suprise[26] = 75; //255
global.group_suprise[27] = 75; //255

// Enemy Groups' runnable/Unrunnable
// 0 - can run, 1 - cant run

global.group_run[0] = 0;
global.group_run[1] = 0;
global.group_run[2] = 0;
global.group_run[3] = 0;
global.group_run[4] = 0;

//Boss groups
global.group_run[20] = 1;
global.group_run[21] = 1;
global.group_run[22] = 1;
global.group_run[23] = 1;
global.group_run[24] = 1;
global.group_run[25] = 1;
global.group_run[26] = 1;
global.group_run[27] = 1;

//------------------------------------------
//Enemy Groups - Used by ENEMY first array dimension
//1-254 Enemies,0 - Null & Stop , 255 - NULL & continue
//each region has 4 groups

globalvar group;
group[0,0] = 0;
group[0,1] = 0;
group[0,2] = 0;

//Region 1
group[1,0] = 1;
group[1,1] = 1;
group[1,2] = 2;

group[2,0] = 3;
group[2,1] = 1;
group[2,2] = 2;

group[3,0] = 2;
group[3,1] = 3;
group[3,2] = 2;

group[4,0] = 1;
group[4,1] = 3;
group[4,2] = 3;

//Region 2
group[5,0] = 4;
group[5,1] = 4;
group[5,2] = 255;

group[6,0] = 6;
group[6,1] = 5;
group[6,2] = 6;

group[7,0] = 5;
group[7,1] = 5;
group[7,2] = 7;

group[8,0] = 4;
group[8,1] = 5;
group[8,2] = 7;

//Region 3
group[9,0] = 8;
group[9,1] = 10;
group[9,2] = 11;

group[10,0] = 11;
group[10,1] = 11;
group[10,2] = 9;

group[11,0] = 11;
group[11,1] = 9;
group[11,2] = 8;

group[12,0] = 10;
group[12,1] = 10;
group[12,2] = 10;

//Region 4
group[13,0] = 12;
group[13,1] = 12;
group[13,2] = 12;

group[14,0] = 12;
group[14,1] = 13;
group[14,2] = 12;

group[15,0] = 13;
group[15,1] = 13;
group[15,2] = 13;

group[16,0] = 12;
group[16,1] = 12;
group[16,2] = 12;

//Region 5  
group[17,0] = 14;
group[17,1] = 14;
group[17,2] = 255;

group[18,0] = 15;
group[18,1] = 15;
group[18,2] = 255;

group[19,0] = 14;
group[19,1] = 15;
group[19,2] = 255;


//Bosses
group[20,0] = 20;
group[20,1] = 255;
group[20,2] = 0;


group[21,0] = 21;
group[21,1] = 255;
group[21,2] = 0;

group[22,0] = 22;
group[22,1] = 255;
group[22,2] = 0;

group[23,0] = 23;
group[23,1] = 255;
group[23,2] = 0;

group[24,0] = 24;
group[24,1] = 255;
group[24,2] = 0;

group[25,0] = 25;
group[25,1] = 255;
group[25,2] = 0;

group[26,0] = 26;
group[26,1] = 255;
group[26,2] = 0;

group[27,0] = 27;
group[27,1] = 255;
group[27,2] = 0;



//----------------------------------------------
// Regions
// Regions are geographical areas where different monsters are encountered.
// Each region can encounter 4 different enemy groups
// Values align with group numbers. EX: region[1,0] = N references group[N,P]

globalvar region;
region[0,0] = 0; 
region[0,1] = 0;
region[0,2] = 0;
region[0,3] = 0;

//Out
region[1,0] = 1;
region[1,1] = 2;
region[1,2] = 3;
region[1,3] = 4;

//Out
region[2,0] = 5;
region[2,1] = 6;
region[2,2] = 7;
region[2,3] = 8;

//Out
region[3,0] = 9;
region[3,1] = 10;
region[3,2] = 11;
region[3,3] = 12;

//Out
region[4,0] = 13;
region[4,1] = 14;
region[4,2] = 15;
region[4,3] = 16;

//Out
region[5,0] = 17; 
region[5,1] = 18;
region[5,2] = 19;
region[5,3] = 19;

//Great North Cave - Unused
region[6,0] = 0; 
region[6,1] = 0;
region[6,2] = 0;
region[6,3] = 0;

//Factory 1 & 2 - Unused
region[7,0] = 0; 
region[7,1] = 0;
region[7,2] = 0;
region[7,3] = 0;

//Boss Region
region[8,0] = 20; 
region[8,1] = 21;
region[8,2] = 22;
region[8,3] = 23;

//Boss Region II
region[9,0] = 24; 
region[9,1] = 25;
region[9,2] = 26;
region[9,3] = 27;

//Factory 3 - Unused
region[10,0] = 0; 
region[10,1] = 0;
region[10,2] = 0;
region[10,3] = 0;
}
