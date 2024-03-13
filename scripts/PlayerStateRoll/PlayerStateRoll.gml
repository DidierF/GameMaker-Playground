function PlayerStateRoll(){
	// Movement
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	var collided = PlayerCollision();
	
	// Update Sprite
	sprite_index = spriteRoll;
	var totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * totalFrames) + min(totalFrames - 1, ((1 - (moveDistanceRemaining / distanceRoll)) * totalFrames));
	
	// Change State
	if (moveDistanceRemaining <= 0) {
		state = PlayerStateFree;
	}
	
	if (collided) {
		state = PlayerStateBonk;
		moveDistanceRemaining = distanceBonk;
		ScreenShake(4, 30);
	}
}