/// @description speed priority
// You can write your code in this editor


if (ambush_flag == 0) {
    //Regular Battle
    for(iii=0;iii<3;iii+=1) {
        if (enemy_slot[iii] != noone)
        ds_priority_add(pr_queue, enemy_slot[iii], enemy_slot[iii].en_speed);        
    }
    ds_priority_add(pr_queue, obj_main.id, obj_main.fight_speed);
        
    for (iii=0;iii<(enemy_number+1);iii+=1) {
        attack_order[iii] = ds_priority_delete_max(pr_queue);
    }
    
} else if (ambush_flag == 1) {    
    // First Strike / Suprise Enemy
    attack_order[0] = obj_main.id;
    
} else if (ambush_flag == 2) {
    // Ambush by enemy
    for(iii=0;iii<enemy_number;iii+=1) {
        if (enemy_slot[iii] != noone)
        ds_priority_add(pr_queue, enemy_slot[iii], enemy_slot[iii].en_speed);
    }
    
    for (iii=0;iii<enemy_number;iii+=1) {
        attack_order[iii] = ds_priority_delete_max(pr_queue);
    }
}
