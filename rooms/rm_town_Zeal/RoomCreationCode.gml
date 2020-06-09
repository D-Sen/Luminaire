TEMP = true;
for (ddd = 0; ddd < 7; ddd++) {
    if (boss_dead[ddd] == 0) TEMP = false;
}

if (TEMP == true) {
	/*
    tile = 0;
    tile = tile_layer_find(7000, 304,800);
    if tile_exists(tile) tile_delete(tile);
    tile = tile_layer_find(7000, 320,800);
    if tile_exists(tile) tile_delete(tile);
	*/
	instance_destroy(instance_position(304,800,obj_gate));
}