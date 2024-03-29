var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);
playerHealth -= playerHealthFrac;

var scale = global.resWidth / global.camWidth;

for (var i = 1; i <= playerHealthMax; i++) {
	var imageIndex = i > playerHealth ? 1 : 0;

	if (i == playerHealth + 1) {
		imageIndex += playerHealthFrac > 0 ? 1 : 0;
		imageIndex += playerHealthFrac > 0.25 ? 1 : 0;
		imageIndex += playerHealthFrac > 05 ? 1 : 0;
	}

	draw_sprite_ext(
		sHealth,
		imageIndex,
		8 + (i - 1) * 16 * scale,
		8,
		scale,
		scale,
		image_angle,
		image_blend,
		image_alpha
	);
}

var wWidth = global.camWidth * scale;
var wHeight = global.camHeight * scale;

var size = 32;
DrawButton(wWidth - size - 100, wHeight - size - 48, size, size, ord("J"));
DrawButton(wWidth - size - 40, wHeight - size - 100, size, size, ord("K"));