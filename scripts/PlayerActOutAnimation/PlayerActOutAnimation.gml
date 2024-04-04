function PlayerActOutAnimation(sprite, endScript) {
	state = PlayerStateAct;
	sprite_index = sprite;
	if (endScript) {
		animationEndScript = endScript;
	}
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}