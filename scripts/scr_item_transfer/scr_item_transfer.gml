   
/*
Arg 0 - Type of transaction - 1 enemy death (item), 2 merchant,3 fight use,
    4 pause screen, 5 enemy death(equip),6 treasure
Arg 1 - Pointer to exact item
Arg 2 - Add or subtract 1 add, 2 subtract
Arg 3 - 1 item, 2 equip 
*/
{

//Add
if (argument2 == 1) {


    //treasure
    if (argument0 == 6){ 
        TEMP = "";
        if (argument3 == 1) TEMP = string(item[argument1,1]);
        if (argument3 == 2) TEMP = string(equip[argument1,1]);            
        obj_control.mess_win_caller = "You obtained - " + TEMP;
    }

    
    //add to new slot or add to stack
    for (jjj=1;jjj<=obj_main.items_current_num;jjj+=1){
    
        //item
        if (argument3 == 1){
            if ((argument1 == obj_main.inventory[jjj,0]) && (obj_main.inventory[jjj,2] == 1)){                
                obj_main.inventory[jjj,1] +=1;
                
                if (argument0 == 1){ 
                    obj_control_battle.eob_items[obj_control_battle.eob_items_num] = item[obj_main.inventory[jjj,0],1];
                    obj_control_battle.eob_items_num +=1;
                }
                break;                
            }
            if (jjj == obj_main.items_current_num) {
                obj_main.inventory[(jjj+1),0] = argument1;
                obj_main.inventory[(jjj+1),1] +=1;
                obj_main.inventory[(jjj+1),2] = 1;
                         
                obj_main.items_current_num +=1;
                if (argument0 == 1){
                    if (argument3 == 1) {
                        obj_control_battle.eob_items[obj_control_battle.eob_items_num] = item[obj_main.inventory[jjj,0],1];
                        obj_control_battle.eob_items_num +=1;
            
                    }
                }
                break;         
            }        
        }
        
        //equip
        if (argument3 == 2){

            if((argument1 == obj_main.inventory[jjj,0]) && (obj_main.inventory[jjj,2] == 2)){                                       
                obj_main.inventory[jjj,1] +=1;
                
                if (argument0 == 1){ 
                    obj_control_battle.eob_items[obj_control_battle.eob_items_num] = equip[obj_main.inventory[jjj,0],1]
                    obj_control_battle.eob_items_num +=1;
                }
                break;
                
            }
            if (jjj == obj_main.items_current_num) {   
                obj_main.inventory[(jjj+1),0] = argument1;
                obj_main.inventory[(jjj+1),1] +=1;
                obj_main.inventory[(jjj+1),2] = 2;
                         
                obj_main.items_current_num +=1;
                
                if (argument0 == 1){
                    if (argument3 == 2) {
                        obj_control_battle.eob_items[obj_control_battle.eob_items_num] = equip[obj_main.inventory[jjj+1,0],1]
                        obj_control_battle.eob_items_num +=1;
                    }
                }
                break;         
            }        
        }
    }
               
} else if (argument2 == 2){
    //Subtract 
    obj_main.inventory[argument1,1] -= 1;
    
    //Add money if sold
    if (argument0 == 2) {     
        //item   
        if (obj_main.inventory[argument1,2] == 1){
            obj_main.money += item[obj_main.inventory[argument1,0],3];
        } else {
            //equip
            obj_main.money += equip[obj_main.inventory[argument1,0],4];
        }
    }   
    //Reorder Item list if 1 removed
    if (obj_main.inventory[argument1,1] == 0) {        
            
        //Check equipment to see if it equipped, if so, remove
        if (obj_main.inventory[argument1,2] == 2){
            for (mmm=0;mmm <= 4;mmm+=1){
                if (obj_main.equipped[mmm] == obj_main.inventory[argument1,0]) {
                   obj_main.equipped[mmm] = 0;
                }
            }
        }
        obj_main.inventory[argument1,2] = 0;
        obj_main.inventory[argument1,0] = 0;        
        obj_main.items_current_num -= 1;                
                
        for (hhh=1;hhh <= obj_main.items_current_num;hhh+=1){
            if (obj_main.inventory[hhh,0] == 0) {
                obj_main.inventory[hhh,0] = obj_main.inventory[hhh+1,0];
                obj_main.inventory[hhh,1] = obj_main.inventory[hhh+1,1];
                obj_main.inventory[hhh,2] = obj_main.inventory[hhh+1,2];

                obj_main.inventory[hhh+1,0] = 0;
                obj_main.inventory[hhh+1,1] = 0;
                obj_main.inventory[hhh+1,2] = 0;
            }
        }
        io_clear();
            
    }
}
}   
