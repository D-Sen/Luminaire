tilemap = layer_tilemap_get_id("collision");

//-------------------------------------

obj_main.target_x = obj_main.x;
obj_main.target_y = obj_main.y;
obj_main.moving = false;
obj_main.image_speed = 0;
obj_main.alarm[1] = 10;

//Pause Screen
if (global.zone_active == 1) {
    global.selector_active = 1;
    selector[2,0] = 1;
    selector[2,1] = 0;
    instance_create(30,86,obj_cursor); //66
}

//------------------------------------

if (global.zone_active == 0) {
    visible = true;
    alarm[0] = 30;
}


//Sets Battle flag to start battle at X steps
if (global.zone_fight == 1) {
    battle_steps = 0;
    battle_flag = 10;
}


if (using_easyxy == true){
    target_x = easyx;
    target_y = easyy;
    x = easyx;
    y = easyy;
    using_easyxy = false;
}

//-------------------------------------------------------
// Destroy triggers after stepping in them

if ((room = rm_cave_RedMountain) && ( global.story_flag > 2)){
	with (obj_trigger) instance_destroy();
}
if ((room = rm_overworld) && ( global.story_flag > 3)){
	instance_destroy(instance_position(496,1280,obj_trigger));
}
if ((room = rm_overworld) && ( global.story_flag > 4)){
	instance_destroy(instance_position(960,608,obj_trigger));
}
if ((room = rm_overworld) && ( global.story_flag > 5)){
	instance_destroy(instance_position(1504,1072,obj_trigger));
}
if ((room = rm_town_Zeal) && ( global.story_flag > 6)){
	with (obj_trigger) instance_destroy();
}
if ((room = rm_final_base) && ( global.story_flag > 7)){
	with (obj_trigger) instance_destroy();
}

