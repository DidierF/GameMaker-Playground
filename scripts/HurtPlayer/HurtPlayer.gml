function HurtPlayer(hurtDirection, force, damage) {
	if (oPlayer.invulnerable <= 0) {
		global.playerHealth = max(0, global.playerHealth - damage);
		if (global.playerHealth > 0) {
			with (oPlayer) {
				//state = PlayerStateBonk; // TODO
				direction = hurtDirection - 180;
				moveDistanceRemaining = force;
				ScreenShake(2, 10);
				flash = 0.7;
				invulnerable = 60;
				flashShader = shRedFlash;
			}
		} else {
			// Kill the player
		}
	}
}