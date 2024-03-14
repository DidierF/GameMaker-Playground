//draw_self();

var margin = 24;

x = (sprite_height / 2) + margin;
y = (window_get_height() - (sprite_height / 2 )) - margin;

draw_sprite_ext(
	sJoystickBase,
	0,
	x,
	y,
	0.2,
	0.2,
	image_angle,
	image_blend,
	image_alpha
);

draw_sprite(sJoystickStick, 0, x + joyX, y + joyY);