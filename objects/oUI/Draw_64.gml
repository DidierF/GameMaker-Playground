var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);
playerHealth -= playerHealthFrac;

for (var i = 1; i <= playerHealthMax; i++) {
	var imageIndex = i > playerHealth ? 1 : 0;
	
	if (i == playerHealth + 1) {
		imageIndex += playerHealthFrac > 0 ? 1 : 0;
		imageIndex += playerHealthFrac > 0.25 ? 1 : 0;
		imageIndex += playerHealthFrac > 05 ? 1 : 0;
	}
	draw_sprite(sHealth, imageIndex, 8 + (i-1) * 16, 8);
}
