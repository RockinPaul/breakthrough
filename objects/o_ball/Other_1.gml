/// @description Bounce out of room boundaries

if (bbox_left < 0 || bbox_right > room_width) {
	hspeed = -hspeed;
} else if (bbox_top < 0) {
	vspeed = -vspeed;
} else if (bbox_bottom > room_height) {
	// Substract a life
}