
tilemap = layer_tilemap_get_id("collision");

npc_this = 1; //id # of npc
acting = 0;

//--------------------------------------
// Towns


if (room == rm_town_Martello) {
 
    if ((x == 144) && (y == 320)) npc_this = 2;
    if ((x == 336) && (y == 304)) npc_this = 3;
    if ((x == 304) && (y == 416)) npc_this = 5;
    if ((x == 464) && (y == 208)) npc_this = 26;
    
} else if (room == rm_town_Ayver) {

    if ((x == 432) && (y == 256)) npc_this = 6;
    if ((x == 336) && (y == 512)) npc_this = 7;
    if ((x == 240) && (y == 272)) npc_this = 10;
    if ((x == 432) && (y == 176)) npc_this = 26;


} else if (room == rm_town_Dogeville) {

    if ((x == 416) && (y == 208)) npc_this = 11;
    if ((x == 224) && (y == 256)) npc_this = 13;
    if ((x == 448) && (y == 352)) npc_this = 26;


} else if (room == rm_town_Greatpass) {

    if ((x == 384) && (y == 320)) npc_this = 16;
    if ((x == 496) && (y == 624)) npc_this = 17;
    if ((x == 608) && (y == 384)) npc_this = 18;
    if ((x == 144) && (y == 272)) npc_this = 20;
    if ((x == 176) && (y == 272)) npc_this = 26;
    
} else if (room == rm_town_Zeal) {

    if ((x == 288) && (y == 944)) npc_this = 25;
    if ((x == 144) && (y == 736)) npc_this = 22;
    if ((x == 416) && (y == 704)) npc_this = 21;
    if ((x == 336) && (y == 944)) npc_this = 25;
    if ((x == 256) && (y == 432)) npc_this = 26;
    if ((x == 368) && (y == 432)) npc_this = 26;

} 

if (room == rm_DEBUG) {

    if ((x == 64) && (y == 48)) npc_this = 6;
    if ((x == 128) && (y == 48)) npc_this = 7;
    if ((x == 192) && (y == 48)) npc_this = 10;
}

//--------------------------------------
// BOSSES - Interior rooms, Areas & Overworld

if (room == rm_cave_RedMountain) {
    npc_this = 30;
} else if (room == rm_cave_OraniaPass) {
    npc_this = 31;
} else if (room == rm_overworld) {
    npc_this = 32;
} else if (room == rm_cave_PeriquePass) {
    npc_this = 34;
} else if (room == rm_factory1) {
    npc_this = 33;
} else if (room == rm_factory2) {
    npc_this = 35;
} 

if (room == rm_final_base) {
    if ((x = 656) && (y = 336)) npc_this = 36;
    if ((x = 656) && (y = 224)) npc_this = 37;
    
}


//--------------------------------------
// Interior rooms

if (room == rm_int_shop_MAR) {
    npc_this = 4;
} else if (room == rm_int_shop_AYV) {
    npc_this = 9;
} else if (room == rm_int_shop_DOG) {
    npc_this = 14;
} else if (room == rm_int_shop_GRE) {
    npc_this = 19;
} else if (room == rm_int_shop_ZEA) {
    npc_this = 24;
}
if (room == rm_int_house_MAR) {
    npc_this = 1;
} else if (room == rm_int_house_AYV) {
    npc_this = 8;
} else if (room == rm_int_house_DOG) {
    npc_this = 12;
} else if (room == rm_int_house_ZEA) {
    npc_this = 23;
}

    npc_myid = npc[npc_this,0]; //ID Number
    //npc_name = npc[npc_this,1]; //Name
    npc_type = npc[npc_this,2]; //Type of NPC reg0,choice1,shop2,event3 
    //npc_desc = npc[npc_this,3]; //Description
    npc_money = npc[npc_this,4]; //Money
    sprite_index = npc[npc_this,5];// = npc[npc_this,5]; //Sprite
    npc_dia1 = npc[npc_this,6]; //DIA1 - dialogue 1
    npc_dia2 = npc[npc_this,7]; //DIA2 - dialogue 2 
    npc_dia3 = npc[npc_this,8]; //DIA3 - dialogue 3
    //npc_id = npc[npc_this,9]; //Might be unused
    //npc_active = npc[npc_this,10]; //Active - 0 = invis, 1 = Visible, 2 = Inactive (therefore invisible)
    //npc_item1 = npc[npc_this,11]; //Item1  
    //npc_item2 = npc[npc_this,12]; //Item2
    //npc_item3 = npc[npc_this,13]; //Item3
    sell_list = npc[npc_this,15] //Sell List

speed = 0;
//image_index = 0;
//direction = 270;
//last_frame = 0;
//first_frame = 0;
    
	
//------------------------------------------------------------
// New NPC walking code
temp = 0;

//edge: short circuits choose direction when a edge of screen is hit. 
//  # is opposite direction to move 
//  0 = off, 1 = up, 2 = right, 3 = down, 4 = left
edge = 0;
image_index = 2;
image_speed = 0;
frame_first = image_index;
frame_last = 3;

//alarm[0] = 50;
//--------------------------------------------------------------
	
    
//Check Walking
if ((npc_type == 0) || (npc_type == 1)) {
    alarm[0] = 50;
    //last_frame = 1;
	//image_speed = 0.25;

    //image_speed = 0.4;
} else if (npc_type == 2) {
	
	//For helping cursor to stop at right place whne player browsing inventory
    number_of_items = 0;

    if (npc[npc_this,15] > 0) {
        for (jjj=1;jjj<=8;jjj+=1){
            if (!(npc_sell_list[npc[npc_this,15],jjj] == 255)) {
                number_of_items += 1;
            } else {
                jjj = 8;
                break;
            }
        }
    }
}    
    


