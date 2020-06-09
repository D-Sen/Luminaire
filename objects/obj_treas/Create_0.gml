
//Which # in treasure array
treasure_id = 0;

//found = 1;
image_speed = 0;


if (room == rm_cave_RedMountain){
    if ((x == 320) && (y == 224)) {
        treasure_id = 1;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
        
    } else if ((x == 448) && (y == 224)) {   
        treasure_id = 2;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
    }
} else if (room == rm_cave_GreatNorthCave){
    if ((x == 96) && (y == 896)) {
        treasure_id = 3;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
        
    } else if ((x == 432) && (y == 64)) {
        treasure_id = 4;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
        
    } else if ((x == 784) && (y == 64)) {
        treasure_id = 5;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
      
    } else if ((x == 800) && (y == 816)) {
        treasure_id = 6;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
    }
} else if (room == rm_cave_PeriquePass){
    if ((x == 96) && (y == 448)) {
        treasure_id = 7;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }
        
    }          
} else if (room == rm_factory3){
    if ((x == 288) && (y == 64)) {
        treasure_id = 8;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } else if ((x == 480) && (y == 336 )) {
        treasure_id = 9;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    }
} else if (room == rm_factory2){
    if ((x == 144) && (y == 320)) {
        treasure_id = 10;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } else if ((x == 480) && (y == 320)) {
        treasure_id = 11;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    }              

} else if (room == rm_factory1){
    if ((x == 144) && (y == 320)) {
        treasure_id = 12;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } else if ((x == 480) && (y == 320)) {
        treasure_id = 13;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } 
} else if (room == rm_int_hovel){
    if ((x == 112) && (y == 16)) {
        treasure_id = 14;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } else if ((x == 160) && (y == 16)) {
        treasure_id = 15;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    } else if ((x == 208) && (y == 16)) {
        treasure_id = 16;
        if (treasure[treasure_id,3] == true) {
            image_index = 0;
        } else {
            image_index = 1;
        }  
    }   
}

