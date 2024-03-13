function DrawButton(x, y, width, height, key) {
	var x2 = x + width;
	var y2 = y + height;

	draw_button(x, y, x2, y2, !keyboard_check(key));
	virtual_key_add(x, y, width, height, key);
}