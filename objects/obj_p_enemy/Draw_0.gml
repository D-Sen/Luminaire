if (flash) {
	if (flash_color == 0) {
    shader_set(shd_flasher);
	} else if (flash_color == 1) {
	shader_set(shd_flasher_r);	
	}
    draw_self();
    shader_reset();
    
} else {
    draw_self();
}


