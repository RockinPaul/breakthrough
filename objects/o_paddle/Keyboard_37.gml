/// @description Paddle moves left

var left_edge = sprite_xoffset;

if (x - spd > left_edge) {
	x -= spd;
} else {
	while (x != left_edge) {
		x--;
	}
}