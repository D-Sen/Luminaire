if(anim) {
    for (var i = stripes; i > 0; i--) { 
        stripe_one[i] += stripe_spd[i];
        stripe_two[i] -= stripe_spd[i];
    }
    
    timer += width / time;
    
    if (timer + width > maxTimer /2 && !roomChange){
        room_goto(global.room_going_to); //next_room
        roomChange = true;
        if (xx != -1) { obj_main.x = xx;}
        if (yy != -1) { obj_main.y = yy;}
    }
     
    if (timer > maxTimer) {
        if (kind == transition.stripe_ver) global.zone_active = 6;
        instance_destroy();
    }
     //if (timer > maxTimer) instance_destroy();
}
     
     

