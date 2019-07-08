/// @description Paddle moves right

var right_edge = room_width - sprite_xoffset;

if (x + spd < right_edge) {
	x += spd;
} else {
	while (x != right_edge) {
		x++;
	}
}