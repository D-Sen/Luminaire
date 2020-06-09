
/*
Argument0 - calling main/npc
Arg 1 - tactic/item
Arg 2 - battle, pause, selling
arg 3 - calling object
*/
{
    ppp = 0;
    
    if (argument0 == "main"){
    
        //-----------------------------------------
        //tactics list

        if (argument1 == "tactics"){
            
            draw_sprite(spr_win_list,0,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+160);
            
            XXX = 30;
            YYY = 170; //220
            side = 0; //which side CURSOR is on. 0 = left,1 = right
            //page = 0; //moved to CREATE
     
            if ((argument3).page == 0) ppp = 1;
            if ((argument3).page == 1) ppp = 13; //9
        
            for(iii=ppp;iii<=obj_main.tactics_current_num;iii+=1){
                if (YYY > 220) break; 
                 
                if (side == 0) {
                    draw_text(XXX,YYY,string_hash_to_newline(tactic[obj_main.tactic_slot[iii],1]));
                    side = 1;
                } else {
                    draw_text(XXX+110,YYY,string_hash_to_newline(tactic[obj_main.tactic_slot[iii],1])); //168 //110
                    YYY += 10;
                    side = 0;
                }
            }
            if (argument2 == "pause"){
                //draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+90,string_hash_to_newline(string(tactic[obj_main.tactic_slot[selector[2,1]],1]) + "        TP: " + string(tactic[obj_main.tactic_slot[selector[2,1]],2])));
                //draw_text_ext(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+110,string_hash_to_newline(tactic[obj_main.tactic_slot[selector[2,1]],12]),-1,200);
				
				draw_text(40,90,string_hash_to_newline(string(tactic[obj_main.tactic_slot[selector[2,1]],1])));
		        draw_text_ext(40,110,string_hash_to_newline(tactic[obj_main.tactic_slot[selector[2,1]],12]),-1,110);
				draw_text(160,100,string_hash_to_newline("TP: " + string(tactic[obj_main.tactic_slot[selector[2,1]],2])));
            
				draw_sprite(spr_item_box,0,20,90); 
				draw_sprite(tactic[obj_main.tactic_slot[selector[2,1]],15],0,20,90);
        
            } 
        }

        //-----------------------------------------
        // Item List

        if (argument1 == "item"){
            
            draw_sprite(spr_win_list,0,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+160)

            XXX = 30; //50
            YYY = 170;  //220
            side = 0; //0 = left,1 = right
    
            if ((argument3).page == 0) ppp = 1;
            if ((argument3).page == 1) ppp = 13; //9
            
            for(iii=ppp;iii<=obj_main.items_current_num;iii+=1){
                if (YYY > 220) break; 
                
                if (side == 0) {
                    if (obj_main.inventory[iii,2] == 2) {
                        draw_text(__view_get( e__VW.XView, 0 )+XXX,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(string(equip[obj_main.inventory[iii,0],1]) + " " + string(obj_main.inventory[iii,1])));                        
                        side = 1;
                    } else {
                        draw_text(__view_get( e__VW.XView, 0 )+XXX,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(string(item[obj_main.inventory[iii,0],1]) + " " + string(obj_main.inventory[iii,1])));
                        side = 1;
                    }
                }else {
                    if (obj_main.inventory[iii,2] == 2) {
                        draw_text(__view_get( e__VW.XView, 0 )+XXX+110,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(string(equip[obj_main.inventory[iii,0],1]) + " " + string(obj_main.inventory[iii,1])));
                        YYY += 10;
                        side = 0;
                    } else {
                        draw_text(__view_get( e__VW.XView, 0 )+XXX+110,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(string(item[obj_main.inventory[iii,0],1]) + " " + string(obj_main.inventory[iii,1])));
                        YYY += 10;
                        side = 0;
                    }
                }
            }
            
            //--------------------------------------
            //draw info window depending on where
            
            if (argument2 == "pause"){
            
                if (obj_main.inventory[selector[2,1],2] == 1) { 
                    //item
                    draw_text(40,90,string_hash_to_newline(string(item[obj_main.inventory[selector[2,1],0],1])));
                    draw_text_ext(40,110,string_hash_to_newline(item[obj_main.inventory[selector[2,1],0],2]),10,110);
                    draw_sprite(spr_item_box,0,20,90);
                    draw_sprite(item[obj_main.inventory[selector[2,1],0],12],item[obj_main.inventory[selector[2,1],0],13],20,90);
                    
                        
                } else if (obj_main.inventory[selector[2,1],2] == 2) { 
                    //equipment
                    draw_text(40,90,string_hash_to_newline(string(equip[obj_main.inventory[selector[2,1],0],1])));
                    draw_text_ext(40,110,string_hash_to_newline(equip[obj_main.inventory[selector[2,1],0],3]),10,110);

                    if( equip[obj_main.inventory[selector[2,1],0],0] <= 10) {
                        draw_text(160,100,string_hash_to_newline("ATK: " + string(equip[obj_main.inventory[selector[2,1],0],5])));
                        draw_text(160,110,string_hash_to_newline("CRT: " + string(equip[obj_main.inventory[selector[2,1],0],6])));
                        draw_text(160,120,string_hash_to_newline("ACC: " + string(equip[obj_main.inventory[selector[2,1],0],7])));
                        if (equip[obj_main.inventory[selector[2,1],0],11] > 0) draw_text(160,130,string_hash_to_newline("ADD EF.: #" + string(statii[equip[obj_main.inventory[selector[2,1],0],11]])));               
                    
                    } else {
                        draw_text(160,110,string_hash_to_newline("DEF: " + string(equip[obj_main.inventory[selector[2,1],0],8])));
                        draw_text(160,120,string_hash_to_newline("WGT: " + string(equip[obj_main.inventory[selector[2,1],0],9])));
                        if (equip[obj_main.inventory[selector[2,1],0],12] > 0) draw_text(160,130,string_hash_to_newline("STAT DEF.: #" + string(statii[equip[obj_main.inventory[selector[2,1],0],12]])));
           
                    }
                    
                    draw_sprite(spr_item_box,0,20,90);
                    draw_sprite(equip[obj_main.inventory[selector[2,1],0],13],equip[obj_main.inventory[selector[2,1],0],14],20,90);
                    
                }
            }
            if (argument2 == "mainSell") {
               if (obj_main.inventory[selector[1,1],2] == 1) { 
                    //item
                    draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+101,string_hash_to_newline(item[obj_main.inventory[selector[1,1],0],2]),-1,110);
                    draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+142,string_hash_to_newline("Value: " + string(item[obj_main.inventory[selector[1,1],0],3])),-1,110);
                } else if (obj_main.inventory[selector[1,1],2] == 2) { 
                    //equipment
                    draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+101,string_hash_to_newline(equip[obj_main.inventory[selector[1,1],0],3]),-1,110);
                    draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+142,string_hash_to_newline("Value: " + string(equip[obj_main.inventory[selector[1,1],0],4])),-1,110);
                }
            }
        }
        
    } else if ((argument0 != "main") && (argument1 == "item")) {
        XXX = __view_get( e__VW.XView, 0 )+30;
        YYY = __view_get( e__VW.YView, 0 )+170;//220;
        side = 0; //0 = left,1 = right

        if (page == 0) ppp = 1;
        if (page == 1) ppp = 13;
        for(iii=ppp;iii<13;iii+=1){ //<=8
            //trying to break if a 0 is hit
            if (npc_sell_list[npc[global.npc_calling,15],iii] == 255) {iii = 8; break;}
            
            if (YYY > __view_get( e__VW.YView, 0 )+220) break;
    
            if (side == 0) {
                if (npc_sell_list[npc[global.npc_calling,15],0] == 2) {
                    draw_text(__view_get( e__VW.XView, 0 )+XXX,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(equip[npc_sell_list[npc[global.npc_calling,15],iii],1]));
                    side = 1;
                } else {
                    draw_text(__view_get( e__VW.XView, 0 )+XXX,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(item[npc_sell_list[npc[global.npc_calling,15],iii],1]));
                    side = 1;
                }
            }else {
                if (npc_sell_list[npc[global.npc_calling,15],0] == 2) {
                    draw_text(__view_get( e__VW.XView, 0 )+XXX+118,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(equip[npc_sell_list[npc[global.npc_calling,15],iii],1]));
                    //168
                    YYY += 10;
                    side = 0;
                } else {
                    draw_text(__view_get( e__VW.XView, 0 )+XXX+118,__view_get( e__VW.YView, 0 )+YYY,string_hash_to_newline(item[npc_sell_list[npc[global.npc_calling,15],iii],1]));
                    YYY += 10;
                    side = 0;
                }
            }
         }
         
         if (npc_sell_list[npc[global.npc_calling,15],0] == 1) { 
            //item
             draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+101,string_hash_to_newline(item[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],2]),10,110);
             draw_text(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+142,string_hash_to_newline("Cost: " + string(item[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],3])));
         } else if (npc_sell_list[npc[global.npc_calling,15],0] == 2) { 
            //equipment
             draw_text_ext(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+101,string_hash_to_newline(equip[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],3]),10,110);
             draw_text(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+142,string_hash_to_newline("Cost: " + string(equip[npc_sell_list[npc[global.npc_calling,15],selector[1,1]],4])));
        }
    }
}
