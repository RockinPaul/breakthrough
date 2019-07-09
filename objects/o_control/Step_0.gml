/// @description Handle victory and game over

if (instance_number(o_brick) < 1) {
	room_restart();
}

if (game_over) {
	if (keyboard_check_pressed(vk_anykey)) {
		room_restart();
		global.player_score = 0;
		global.player_lives = 3;
	}
}