function playerDraw() {
	gravSign = sign(global.grav);
	draw_sprite_ext(sprite_index, 0, x, y, 1, gravSign*1, image_angle, global.playerColor, 1);



}
