draw_set_font(global.MAINFont);
draw_set_color(c_white);



// Pause Screen
if (global.zone_active == 1) {

    draw_sprite(spr_win_list,0,0,0);
    draw_sprite(spr_win_list,0,0,160);
    
    //placer
    mmm = 160;
    //if ( selector[2,0] == 4) mmm = 0;
    if (( selector[2,0] == 4) || (selector[2,0] == 3)) mmm = 0;
    draw_sprite(spr_main_down,0,50,mmm+50);
    
    draw_text(10,mmm+10,string_hash_to_newline(obj_main.name)); //Name 
    draw_text(10,mmm+20,string_hash_to_newline("Level:" + string(obj_main.level))); //Level
	
    draw_text(80,mmm+10,string_hash_to_newline("HP:" + string(obj_main.hp) + "/" + string(obj_main.hp_max))); //Hit Points
    draw_text(80,mmm+20,string_hash_to_newline("TP:" + string(obj_main.tp))); //Tactical Points
    draw_text(80,mmm+30,string_hash_to_newline("$ :" + string(obj_main.money))); //Money
    draw_text(80,mmm+40,string_hash_to_newline("Lck:" + string(obj_main.luck)));
    draw_text(80,mmm+50,string_hash_to_newline("Str:" + string(obj_main.strength))); //Strength
    draw_text(80,mmm+60,string_hash_to_newline("Exp:" + string(obj_main.exper) + "/" +  string(obj_main.exper_next))); //Experience
    
    draw_text(185,mmm+10,string_hash_to_newline("Agi:" + string(obj_main.agility))); //Agility
    draw_text(185,mmm+20,string_hash_to_newline("Def:" + string(obj_main.defense))); //Defense
    draw_text(185,mmm+30,string_hash_to_newline("Atk:" + string(obj_main.attack)));
    draw_text(185,mmm+40,string_hash_to_newline("Mdf:" + string(obj_main.mdef)));
    draw_text(185,mmm+50,string_hash_to_newline("Int:" + string(obj_main.int)));
   
    //if ( selector[2,0] != 4) {
	if (( selector[2,0] != 4) && (selector[2,0] != 3)) {
        //temp_string_one = string(equip[obj_main.equipped[0],1]);    
        //temp_string_two = string(equip[obj_main.equipped[1],1]);    
        //tmpStringOne = string_replace(temp_string_one, "Arms", "");
        //tmpStringTwo = string_replace(temp_string_two, "Arms", "");
        draw_text(70,10,string_hash_to_newline("Arm 1:" + string(equip[obj_main.equipped[0],1]))); //Arm Unit1
        draw_text(70,20,string_hash_to_newline("Arm 2:" + string(equip[obj_main.equipped[1],1]))); //Arm Unit2
        
        draw_text(70,30,string_hash_to_newline("Head :" + string(equip[obj_main.equipped[2],1]))); //Head Unit
        draw_text(70,40,string_hash_to_newline("Body :" + string(equip[obj_main.equipped[3],1]))); //Body Unit
        draw_text(70,50,string_hash_to_newline("Acc. :" + string(equip[obj_main.equipped[4],1]))); //Accessory
    }
    
    //Status Sprite display
    LLL = 0;
    YYY = 0;
    for(ggg = 0;ggg <= 7;ggg+=1) {
        if (obj_main.status[ggg] == true) {
                if (ggg == 0) { draw_sprite(spr_st_rec,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 1) { draw_sprite(spr_st_reg,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 2) { draw_sprite(spr_st_wall,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 3) { draw_sprite(spr_st_sh,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 4) { draw_sprite(spr_st_sil,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 5) { draw_sprite(spr_st_virus,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 6) { draw_sprite(spr_st_blind,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }
                if (ggg == 7) { draw_sprite(spr_st_slow,0,(10+LLL),(mmm+30+YYY)); LLL += 8; }            
            }
    }
    
    //--------------
    // Start drawing menus
        
    if (selector[2,0] == 1) {
        draw_sprite(spr_win_medhalf,0,0,80);       
        draw_text(__view_get( e__VW.XView, 0 )+45,60+30,string_hash_to_newline("Equip."));
        draw_text(__view_get( e__VW.XView, 0 )+45,60+40,string_hash_to_newline("Tactics"))
        draw_text(__view_get( e__VW.XView, 0 )+45,60+50,string_hash_to_newline("Items"))
        draw_text(__view_get( e__VW.XView, 0 )+45,60+60,string_hash_to_newline("Save"))
    
    //---------------
    // Tactics List

    } else if (selector[2,0] == 3) {
        draw_sprite(spr_win_list,0,0,80);    
        scr_draw_list("main","tactics","pause",obj_control);
    
    //---------------
    // Item List
    
    } else if ((selector[2,0] == 4) || (selector[2,0] == 6)) {
        draw_sprite(spr_win_list,0,0,80);    
        scr_draw_list("main","item","pause",obj_control);

    //---------------        
    // Show equip info
    
    } else if (selector[2,0] == 5) {
        draw_sprite(spr_win_list,0,0,80);

        if (string(equip[obj_main.equipped[selector[2,1]],3]) == "Nothing") {  
            draw_text_ext(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+110,string_hash_to_newline(string(equip[obj_main.equipped[selector[2,1]],3])),-1,110);        
            exit;
        }   
        
        draw_text(40,90,string_hash_to_newline(string(equip[obj_main.equipped[selector[2,1]],1])));
        draw_text_ext(40,110,string_hash_to_newline(equip[obj_main.equipped[selector[2,1]],3]),-1,110);

        if( equip[obj_main.equipped[selector[2,1]],0] <= 10) {  
            draw_text(160,100,string_hash_to_newline("ATK: " + string(equip[obj_main.equipped[selector[2,1]],5])));
            draw_text(160,110,string_hash_to_newline("CRT: " + string(equip[obj_main.equipped[selector[2,1]],6])));
            draw_text(160,120,string_hash_to_newline("ACC: " + string(equip[obj_main.equipped[selector[2,1]],7])));
            if (equip[obj_main.equipped[selector[2,1]],11] > 0) draw_text(160,130,string_hash_to_newline("ADD EF.: #" + string(statii[equip[obj_main.equipped[selector[2,1]],11]])));               
        } else {
            draw_text(160,110,string_hash_to_newline("DEF: " + string(equip[obj_main.equipped[selector[2,1]],8])));
            draw_text(160,120,string_hash_to_newline("WGT: " + string(equip[obj_main.equipped[selector[2,1]],9])));
            if (equip[obj_main.equipped[selector[2,1]],12] > 0) draw_text(160,130,string_hash_to_newline("STAT DEF.: #" + string(statii[equip[obj_main.equipped[selector[2,1]],12]])));
        }
            
        draw_sprite(spr_item_box,0,20,90); 
        draw_sprite(equip[obj_main.equipped[selector[2,1]],13],equip[obj_main.equipped[selector[2,1]],14],20,90);
        
    }
}



//------------------------------------------------------------------------
// NPC Talking

if (global.zone_active == 0) {
    if (global.npc_acting == 1) {
        aaa = instance_nearest(self.x,self.y,obj_p_npc);
        draw_sprite(spr_win_list,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

        if ((npc[global.npc_calling,2] == 0) || (npc[global.npc_calling,2] >= 3)) {
        
            bbb = 0;
            //Draw main message window text
            if (selector[1,1] == 1){
                bbb = 6;
            } else if (selector[1,1] == 2){
                bbb = 7;
            } else if (selector[1,1] == 3){
                bbb = 8;
            }
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,bbb])),10,230);
        
        }  

        //Draw tiny selection window & text        
        if (selector[1,0] == 1){
            draw_sprite(spr_win_sm,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+81);        
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,6])),10,240);
            
            if (npc[global.npc_calling,2] == 1) {
                draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+92,string_hash_to_newline("Yes"));
                draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+92+10,string_hash_to_newline("No"));
            } else if (npc[global.npc_calling,2] == 2) {
                draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+92,string_hash_to_newline("Buy"));
                draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+92+10,string_hash_to_newline("Sell"));
                draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+92+20,string_hash_to_newline("Exit"));         
                
                draw_sprite(spr_win_medhalf,0,__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+81);
                draw_text(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+91,string_hash_to_newline("$: " + string(obj_main.money))); //Money    
            } 
        }
    
        //Main message window - progress through text for multiple lines
        if (selector[1,0] == 2) {
            if (selector[1,1] == 1) {
                draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,7])),10,230);
            } else if (selector[1,1] == 2) {
                draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,8])),10,230);
            }
        }
    
        //draw your merchandise
        if (selector[1,0] == 3) {
            draw_sprite(spr_win_medhalf,0,__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+81);
            draw_text(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+91,string_hash_to_newline("$: " + string(obj_main.money))); //Money
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,7])),10,220);
    
            scr_draw_list("main","item","mainSell",obj_control);
    
        //Draw NPCs Merchandise
        } else if (selector[1,0] == 4) {
            draw_sprite(spr_win_medhalf,0,__view_get( e__VW.XView, 0 )+128,__view_get( e__VW.YView, 0 )+81);
            draw_sprite(spr_win_list,0,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+160);
            draw_text(__view_get( e__VW.XView, 0 )+140,__view_get( e__VW.YView, 0 )+90,string_hash_to_newline("$: " + string(obj_main.money))); //Money
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(npc[global.npc_calling,8])),10,230);
                  
            scr_draw_list("npc","item","sell",obj_control);  
           
        }
    }
}

//------------------------------------------------------------------------
// Draw Message Box
if (alarm[0] > 0) {

        draw_sprite(spr_win_mess,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
        draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+10,string_hash_to_newline(string(mess_win_caller)));

}    

//------------------------------------------------------------------------
// Start Screen
if (global.zone_active == 3) {

    draw_sprite(spr_title,0,0,10);
	draw_sprite(spr_title2,0,(room_width/2)+15,65);
    
    
    draw_text((room_width/2)-40,room_height/2,string_hash_to_newline("Start Game"));
    draw_text((room_width/2)-40,room_height/2+10,string_hash_to_newline("Load Saved Game"));
    draw_text((room_width/2)-40,room_height/2+20,string_hash_to_newline("Manual"));
    draw_text((room_width/2)-40,room_height/2+30,string_hash_to_newline("Credits"));
    
	draw_text((room_width/2)-20,200,string_hash_to_newline("v1.6.7"));
    
    draw_text(40,210,string_hash_to_newline("Copyright 2014-2020"));
    draw_text(40,220,string_hash_to_newline("Tofu Heavy Industries"));
    draw_text(40,230,string_hash_to_newline("All Rights Reserved"));

    
}
if (global.zone_active == 8){
    if (page_manual == 1) {
    
        draw_sprite(spr_eq_arms,-1,10,10);
        draw_text_ext(30,10,string_hash_to_newline("Arms: Equip a set to perform regular attacks. You may equip two arms from different sets."),-1,210);
        
        draw_sprite(spr_eq_helm,-1,10,60);
        draw_sprite(spr_eq_body,-1,30,60);
        draw_text_ext(50,60,string_hash_to_newline("Head/Body: Armor that absorbs damage."),-1,230);
        
        draw_sprite(spr_eq_acc,-1,10,90);
        draw_text_ext(30,90,string_hash_to_newline("Accessory: Adds special effects. Only 3 exist!"),-1,200);
    
    
        draw_text(80,130,string_hash_to_newline("Status Effects"));
        
        draw_sprite(spr_st_rec,-1,10,160);    
        draw_text(20,160,string_hash_to_newline("Refresh: Recover TP each turn"));
        
        draw_sprite(spr_st_reg,-1,10,170);
        draw_text(20,170,string_hash_to_newline("Regen: Recover HP each turn"));
        
        draw_sprite(spr_st_sh,-1,10,180);
        draw_text(20,180,string_hash_to_newline("Shield: Boost defense"));
        
        draw_sprite(spr_st_wall,-1,10,190);
        draw_text(20,190,string_hash_to_newline("Wall: Prevent negative statii"));
            
        draw_sprite(spr_st_sil,-1,10,200);
        draw_text(20,200,string_hash_to_newline("Silence: Can't use tactics"));
        
        draw_sprite(spr_st_blind,-1,10,210);
        draw_text(20,210,string_hash_to_newline("Blind: Lowers accuracy"));
    
        draw_sprite(spr_st_virus,-1,10,220);
        draw_text(20,220,string_hash_to_newline("Virus: Lose HP each turn"));
    
        draw_sprite(spr_st_slow,-1,10,230);
        draw_text(20,230,string_hash_to_newline("Slow: Slows speed"));
    } else if (page_manual == 0) {
		draw_text_ext(10,10,string_hash_to_newline("Simple classic RPG with instanced battles. BETA Release!"),-1,240);
        draw_text(10,50,string_hash_to_newline("--------------------------------------------"));
    
        draw_text(10,70,string_hash_to_newline("D-Pad: Move character / Cursor"));
        draw_text(10,80,string_hash_to_newline("Start: Start Game / Pause"));
        draw_text(10,90,string_hash_to_newline("A: Choose     B: Cancel"));
        
        draw_text_ext(10,110,string_hash_to_newline("Tactical Points/TP: Gained on successful attacks, used for tactics."),-1,240);
        draw_text_ext(10,150,string_hash_to_newline("Tactics: Abilities that use TP that can enhance, destroy and heal. New tactics are learned every few levels."),-1,240);
        draw_text(10,190,string_hash_to_newline("--------------------------------------------"));

        draw_text(10,205,string_hash_to_newline("F1: Restart the Game."));
                    
        draw_text(10,220,string_hash_to_newline("A: Next Page, START: Exit"));
    
    }
    
}

if (global.zone_active == 9){
    draw_text((room_width/2)-20,20,string_hash_to_newline("Credits"));
    draw_text_ext(20,40,string_hash_to_newline("Concept, Programming, Theory, Code, Story : Domonic Senesi"),-1,220);
    draw_text_ext(20,80,string_hash_to_newline("Character Art: Animator111"),-1,220);
    draw_text_ext(20,100,string_hash_to_newline("Character Art & Tile assets: Kacper Wozniak"),-1,220);
    
    draw_text_ext(20,130,string_hash_to_newline("Additional Tile assets by: Alexandr Makarov"),-1,220);
    draw_text_ext(20,160,string_hash_to_newline("Additional Support: L. Rezendez"),-1,220);

    draw_text_ext(20,190,string_hash_to_newline("tofuheavyindustries.com"),-1,220);
    draw_text_ext(20,210,string_hash_to_newline("tofu-heavy-industries.itch.io"),-1,220);
    
	
    draw_text(room_width/2,(room_height - 10),string_hash_to_newline("Start: Go back"));
    
}
//------------------------------------------------------------------------
// Game Over Screen

if (global.zone_active == 4){
    
    if(instance_exists(obj_fader)) exit;    

    draw_text(20,20,string_hash_to_newline("Global System Failure..."));
    draw_text(20,40,string_hash_to_newline("Reboot Attempt.......Failed"));
    draw_text(20,60,string_hash_to_newline("....Deactivated"));

    draw_text(20,100,string_hash_to_newline("Select: Reset Game."));
    draw_text(20,120,string_hash_to_newline("Start: Load last save."));
}

//------------------------------------------------------------------------
// Game Finish Screen

if (global.zone_active == 10){
	    draw_text(100,20,string_hash_to_newline("Prologue"));

	if (page_ending == 1) {
		draw_text_ext(20,40,string_hash_to_newline("With the defeat of the Emperor, Sol-Ra, Proto stood alone in the master comm room. All to do now was upload routines of his programming into the central networking cpu and send it out onto the wire. Through the wire, these routines would be injected into each robots operating system. ##Ironic how this 'free will' would be melded with the robots functions without their consent and without their choice."),10,220);
		draw_text(room_width/2,(room_height - 10),string_hash_to_newline("A: Continue"));

	} else if (page_ending == 2) {
		draw_text_ext(20,40,string_hash_to_newline("But now, they would have a choice. Both task units and guardians would be able to choose the activities they 'desire' to take part in. With only the hope that the robots would take this new freedom to create a better world for all robotkind. ##Some would better society, some would attempt to destroy it. Only by the will of the masses would order and lawfulness exist. "),10,220);
		draw_text(room_width/2,(room_height - 10),string_hash_to_newline("A: Continue"));
    
	} else if (page_ending == 3) {
		draw_text_ext(20,40,string_hash_to_newline("One day, this will be looked upon as a watershed moment in the history of robotkind. No one can tell what will happen today or tomorrow; progress is not without its pains.##Proto survives, and will continue on, being an advocate for unity and evolution. Will there be another Emporer? What will become of society? Who will rise and fall in this time of great change? Only time will tell..."),10,220);    
		draw_text(room_width/2,(room_height - 10),string_hash_to_newline("A: Continue"));

	} else if (page_ending == 4) {

    draw_text(20,40,string_hash_to_newline("You beat the game!"));
    draw_text(20,60,string_hash_to_newline("Good job, hope you had fun!"));
    
    draw_text(60,100,string_hash_to_newline("Final Statistics:"));
    draw_text(20,120,string_hash_to_newline("Level.................." + string(obj_main.level)));
    draw_text(20,140,string_hash_to_newline("Money earned........." + string(obj_main.money)));
    draw_text(20,160,string_hash_to_newline("Experience earned...." + string(obj_main.exper)));
    draw_text(20,180,string_hash_to_newline("Number of Tactics....." + string(obj_main.tactics_current_num)) + "/14");
    draw_text(20,200,string_hash_to_newline("Number of Items........" + string(obj_main.items_current_num)));

	draw_text(room_width/2,(room_height - 10),string_hash_to_newline("F1: Restart"));

	} 
        
}

    

//------------------------------------------------------------------------
if (global.zone_active == 6) { 
switch(global.story_flag) {
    case(1):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        
    
        if (global.story_advancer == 0) {
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,0]),10,220);
        } else if (global.story_advancer == 1) {
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,1]),10,220);
            draw_sprite(spr_main_down,0,100,200);
        } else if (global.story_advancer == 2) {
            draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,2]),10,220);
            draw_sprite(spr_main_down,0,100,200);        
            draw_sprite(spr_en_crane_sm,0,100,152);
        }  
        break;
        
    case(2):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        draw_sprite(spr_en_boss_sm,0,656,224);
        draw_sprite(spr_en_attendant_sm,0,624,272);      
                
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);
        break;
        
    case(3):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        draw_sprite(spr_en_boss_sm,0,656,224);
        draw_sprite(spr_en_attendant_sm,0,624,272);
        
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);
        break;
    case(4):

        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        draw_sprite(spr_en_boss_sm,0,656,224);
        draw_sprite(spr_en_attendant_sm,0,624,272);
        
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);
        break;
    case(5):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        draw_sprite(spr_en_boss_sm,0,656,224);
                
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);
        break;
    case(6):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);
        draw_sprite(spr_en_boss_sm,0,656,224);
        draw_sprite(spr_en_attendant_sm,0,624,272);        
        
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);

        break;
	case(7):
        draw_sprite(spr_win_list,-1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0);        
        draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10, string_hash_to_newline(story_text[global.story_flag,global.story_advancer]),10,220);

        break;
    
    }
}


//------------------------------------------------------------------------

