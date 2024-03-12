function SlimeWander(){
	sprite_index = sprMove;
	
	// Alt destination or given up?
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed) {
		hSpeed = 0;
		vSpeed = 0;
		// End our move animation
		if (image_index < 1) {
			image_speed = 0.0;
			image_index = 0;
		}
		
		// Set new target destionation
		if (++wait >= waitDuration) {
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	} else {
		// Move towards new destination
		timePassed += 1;
		image_speed = 1.0;
		var distanceToGo = point_distance(x, y, xTo, yTo);
		var speedThisFrame = enemySpeed;
		if (distanceToGo < enemySpeed) {
			speedThisFrame = distanceToGo;
		}
		
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(speedThisFrame, dir);
		vSpeed = lengthdir_y(speedThisFrame, dir);
		
		if (hSpeed != 0) {
			image_xscale = sign(hSpeed);
		}
		
		// Collide & move
		var collided = EnemyTileCollision();
	}
	
	
}