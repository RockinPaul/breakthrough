/// @description Power effect

if (image_index == 0) {
	with (o_paddle) {
		image_xscale = 1.5;
		alarm[0] = 10 * room_speed;
	}
} else {
	with(o_ball) {
		speed = spd;
		
	}
}

instance_destroy();