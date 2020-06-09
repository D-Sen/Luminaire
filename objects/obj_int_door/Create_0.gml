 //Sprite - Will change only in very few circumstances

image_speed = 0;

if (room == rm_cave_RedMountain) {
    sprite_index = spr_cave_door;
    image_index = 6;
}

if (room == rm_cave_OraniaPass) {
    sprite_index = spr_cave_door;
    image_index = 0;
}

if (room == rm_cave_GreatNorthCave) {
    sprite_index = spr_cave_door;
    image_index = 1;
}

if (room == rm_cave_PeriquePass) {
    sprite_index = spr_cave_door;
    if ((self.x == 0) && (self.y == 80)){
        image_index = 8;
    }
    if ((self.x == 320) && (self.y == 1152)){
        image_index = 1;
    }

}

if (room == rm_town_CornBridge) {
    sprite_index = spr_cave_door;
    image_index = 9;
}

if (room == rm_int_hovel) {
    sprite_index = spr_cave_door;
    image_index = 3;
}

switch(room){
    case(rm_int_house_MAR):
    case(rm_int_house_AYV):
    case(rm_int_house_DOG):
    case(rm_int_house_GRE):
    case(rm_int_house_ZEA):
    case(rm_int_house2_AYV):
    case(rm_int_house2_GRE):
    case(rm_int_house3_GRE):
    case(rm_int_shop_MAR):
    case(rm_int_shop_AYV):
    case(rm_int_shop_DOG):
    case(rm_int_shop_GRE):
    case(rm_int_shop_ZEA):
        sprite_index = spr_cave_door;
        image_index = 10;
        break;
}


