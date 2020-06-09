 
//----------------------------------------
draw_set_color(c_white);    
draw_set_font(global.MAINFont);

main_box_y = 170;
main_box_x = room_width/2 + 30;
//----------------------------------------


if (fight_over == 0){

    //----------------------------------------
    draw_sprite(spr_win_medhalf,0,128,160); 
    draw_sprite(spr_win_mess,0,0,0);
    
    //----------------------------------------   
    draw_text(20,10,obj_main.name);
    draw_text(120,10,string(obj_main.hp) + "/" + string(obj_main.hp_max));
    draw_text(190,10,"TP:" + string(obj_main.tp));
    //----------------------------------------
    // Main - Status Sprite display
        
      

        if (obj_main.status[0] == 1) { draw_sprite(spr_st_rec,0,(68),(10)); }
        if (obj_main.status[1] == 1) { draw_sprite(spr_st_reg,0,(76),(10)); }
        if (obj_main.status[2] == 1) { draw_sprite(spr_st_sh,0,(84),(10)); }
        if (obj_main.status[3] == 1) { draw_sprite(spr_st_wall,0,(92),(10)); }
        
        if (obj_main.status[4] == 1) { draw_sprite(spr_st_sil,0,(68),(18)); }
        if (obj_main.status[5] == 1) { draw_sprite(spr_st_virus,0,(76),(18)); }
        if (obj_main.status[6] == 1) { draw_sprite(spr_st_blind,0,(84),(18)); }
        if (obj_main.status[7] == 1) { draw_sprite(spr_st_slow,0,(92),(18));}
                  
        
        
        
        
    YYY = 0;
    for (jjj = 0;jjj < 3;jjj+=1){
        if (instance_exists(enemy_slot[jjj])) {    
            draw_text(138,(175+YYY),enemy_slot[jjj].en_name + " " + string(enemy_slot[jjj].en_hp));
            YYY+=10;       
        }
    }            
    //-----------------------------
    // Main Fight Choice List

    
    if ((selector[1,0] == 1) || (selector[1,0] == 2))  { 
        if (obj_main.can_act == 1){
            draw_sprite(spr_win_medhalf,0,0,160);  
            
            draw_sprite(equip[obj_main.equipped[0],13],equip[obj_main.equipped[0],14],20,main_box_y+10);
            draw_sprite(equip[obj_main.equipped[1],13],equip[obj_main.equipped[1],14],20,main_box_y+30);

            draw_sprite(spr_fx_stat,0,40,main_box_y+10);
            draw_sprite(spr_it_fluid,0,40,main_box_y+30);

            draw_sprite(spr_run,0,60,main_box_y+10);
            
            if((obj_cursor.x == 20) && (obj_cursor.y == 180)) draw_text(30,220,string(equip[obj_main.equipped[0],1]));
            if((obj_cursor.x == 20) && (obj_cursor.y == 200)) draw_text(30,220,string(equip[obj_main.equipped[1],1]));
            if((obj_cursor.x == 40) && (obj_cursor.y == 180)) draw_text(30,220,"Tactics");
            if((obj_cursor.x == 40) && (obj_cursor.y == 200)) draw_text(30,220,"Items");
            if((obj_cursor.x == 60) && (obj_cursor.y == 180)) draw_text(30,220,"Run");
        }               
    }
        
    
    
    //-----------------------------
    // Draw Main Item List
    
    if (selector[1,0] == 3) {
            scr_draw_list("main","item","battle",obj_control_battle); 
    }

    //-----------------------------
    // Main draw Tactics List
    
    if (selector[1,0] == 4) {
             scr_draw_list("main","tactics","battle",obj_control_battle);
    }    
    
    //-----------------------------
    // 
    if (alarm[2] > 0) {
        draw_sprite(spr_win_mess,0,0,0);
        draw_text(20,10,mess_win_caller);
    }
    if (alarm[3] > 0) {
        draw_sprite(spr_win_list,0,0,160); 
    }    
    
    if (alarm[11] > 0) {
        draw_sprite(spr_win_list,0,0,160); 
        draw_text_ext(20,(main_box_y+10),string(battle_text[0]),-1,180);
        draw_text(20,(main_box_y+30),string(battle_text[1]));
        draw_text(20,(main_box_y+40),string(battle_text[2]));
        draw_text(20,(main_box_y+50),string(battle_text[3]));
        
    }                

}

//-----------------------------
//Battle Won


if (fight_over ==1){
    draw_sprite(spr_win_list,0,0,160);
        
    draw_text((room_width/2)-40,main_box_y,"Fight Won");
    draw_text(20,main_box_y+10,"Exp Gained:" + string(eob_exp));
    draw_text(20,main_box_y+20,"Money Gained:" + string(eob_money));

    if (level_up == true) draw_text(160,main_box_y+10,"Level Up!");
    if (eob_items_num == 0) {    
        draw_text(20,main_box_y+30,"Items Gained: None"); //230
    } else {    
        draw_text(20,main_box_y+30,"Items Gained: "); //230
                
        names[0] = 0;
        names[1] = 0;
        names[2] = 0;
        names[3] = 0;
        names[4] = 0;
        names[5] = 0;
        YYY = 0;
        XXX = 0;
        
        //Items Gained - Show unique names
        for (jjj = 0;jjj < eob_items_num;jjj+=1){
            for (hhh = 0; hhh < eob_items_num; hhh+=1){
                if (eob_items[jjj] == eob_items[hhh]){                   
                    if (jjj > hhh ) { names[jjj] = 300; break;}
                    if (jjj <= hhh) names[jjj] +=1;
                }
            }
        }
         
        //Items Gained - Stack names and add #'s          
        for (jjj = 0;jjj < eob_items_num;jjj+=1){
            if (names[jjj] != 300){
                if (jjj >= 2){
                    draw_text(XXX+20,(main_box_y+40+YYY),"etc... ");
                    jjj = eob_items_num;
                    
                } else if (jjj == 1){
                     draw_text(XXX+ 20,(main_box_y+40+YYY),eob_items[jjj] + " " + string(names[jjj])); //330
                    //YYY+=10; (20)
                    XXX += 110;
                    YYY -= 10;    
                } else {
                    draw_text(XXX+20,(main_box_y+40+YYY),eob_items[jjj] + " " + string(names[jjj])); //330
                    YYY+=10; 
                }
            }    
        }
    } //Items gained yes?    

} //End - fight_over == 0