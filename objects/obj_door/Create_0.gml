
//-------------------------------------------
// Overworld

image_speed = 0;

if (room == rm_overworld) {
 
    // West - from south to north
    if ((x == 768) && (y == 1648)) { sprite_index = spr_town; image_index = 0;}
    if ((x == 480) && (y == 1680)) { sprite_index = spr_cave; image_index = 0;}
    if ((x == 432) && (y == 1392)) { sprite_index = spr_cave; image_index = 0;}
    if ((x == 448) && (y == 1264)) { sprite_index = spr_cave; image_index = 0;}
    if ((x == 944) && (y == 992)) { sprite_index = spr_town; image_index = 0;} 
    if ((x == 224) && (y == 544)) { sprite_index = spr_town; image_index = 3;}
    if ((x == 480) && (y == 528)) { sprite_index = spr_cave; image_index = 1;}
    
    // East - from north to south
    if ((x == 1552) && (y == 576)) { sprite_index = spr_town; image_index = 2;}        
    if ((x == 1248) && (y == 800)) sprite_index = spr_factory;        
    if ((x == 1520) && (y == 976)) { sprite_index = spr_cave; image_index = 0;}
    if ((x == 1504) && (y == 1040)) { sprite_index = spr_cave; image_index = 0;}
    if ((x == 1568) && (y == 1248)) { sprite_index = spr_town; image_index = 0;}
    if ((x == 1568) && (y == 1664)) { sprite_index = spr_town; image_index = 1;}
    if ((x == 1408) && (y == 1728)) sprite_index = spr_factory;
    if ((x == 1696) && (y == 1600)) sprite_index = spr_factory;
 
}



