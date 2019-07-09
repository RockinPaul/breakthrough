/// @description Bounce out of room boundaries

if (bbox_left < 0 || bbox_right > room_width) {
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed = -hspeed;
}

if (bbox_top < 0) {
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	vspeed = -vspeed;
}

if (bbox_bottom > room_height) {
	// Substract a life
	global.player_lives -= 1;
	instance_destroy();
	
	if (global.player_lives <= 0) {
		o_control.game_over = true;
		if (global.player_score > global.high_score) {
			global.high_score = global.player_score;
		}
	} else {
		instance_create_layer(xstart, ystart, "Instances", o_ball);
	}
}