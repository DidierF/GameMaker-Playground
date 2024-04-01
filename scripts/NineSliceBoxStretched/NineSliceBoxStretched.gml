function NineSliceBoxStretched(sprite, x1, y1, x2, y2, index) {
	var sprSize = sprite_get_width(sprite) / 3;
	var boxW = x2 - x1;
	var boxH = y2 - y1;
	
	// Middle
	draw_sprite_part_ext(
		sprite,
		index,
		sprSize,
		sprSize,
		1,
		1,
		x1 + sprSize,
		y1 + sprSize,
		boxW - (sprSize * 2),
		boxH - (sprSize * 2),
		c_white,
		1
	);
	
	// Corners
	// Top Left
	draw_sprite_part(sprite, index, 0, 0, sprSize, sprSize, x1, y1);
	// Top Right
	draw_sprite_part(sprite, index, sprSize*2, 0, sprSize, sprSize, x1+boxW-sprSize, y1);
	// Bottom Left
	draw_sprite_part(sprite, index, 0, sprSize*2, sprSize, sprSize, x1, y1+boxH-sprSize);
	// Top Left
	draw_sprite_part(sprite, index, sprSize*2, sprSize*2, sprSize, sprSize,  x1+boxW-sprSize, y1+boxH-sprSize);
	
	// Edges
	// Left Edge
	draw_sprite_part_ext(
		sprite,
		index,
		0,
		sprSize,
		sprSize,
		1,
		x1,
		y1 + sprSize,
		1,
		boxH - (sprSize * 2),
		c_white,
		1
	);
	// Right Edge
	draw_sprite_part_ext(
		sprite,
		index,
		sprSize*2,
		sprSize,
		sprSize,
		1,
		x1+boxW-sprSize,
		y1 + sprSize,
		1,
		boxH - (sprSize * 2),
		c_white,
		1
	);
	// Top Edge
	draw_sprite_part_ext(
		sprite,
		index,
		sprSize,
		0,
		1,
		sprSize,
		x1+sprSize,
		y1,
		boxW-(sprSize*2),
		1,
		c_white,
		1
	);
	// Bottom Edge
	draw_sprite_part_ext(
		sprite,
		index,
		sprSize,
		sprSize*2,
		1,
		sprSize,
		x1+sprSize,
		y1+boxH-sprSize,
		boxW-(sprSize*2),
		1,
		c_white,
		1
	);
	
}