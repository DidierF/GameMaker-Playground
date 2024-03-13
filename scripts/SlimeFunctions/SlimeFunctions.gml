function SlimeWander() {
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
	
	// Check for aggro
	if (++aggroCheck >= aggroCheckDuration) {
		aggroCheck = 0;
		if (instance_exists(oPlayer) && point_distance(x,y, oPlayer.x, oPlayer.y) <= enemyAggroRadius) {
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
		}
	}
}

function SlimeChase() {
	sprite_index = sprMove;
	// Attack range
	var attackRange = 8;
	if (instance_exists(target)) {
		xTo = target.x;
		yTo = target.y;
		
		var distanceToGo = point_distance(x, y, xTo, yTo);
		
		image_speed = 1.0;
		dir = point_direction(x, y, xTo, yTo);
		if (distanceToGo > enemySpeed) {
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		} else {
			hSpeed = lengthdir_x(distanceToGo, dir);
			vSpeed = lengthdir_y(distanceToGo, dir);
		}
		
		if (hSpeed != 0) {
			image_xscale = sign(hSpeed);
		}
		EnemyTileCollision();
	
		if (point_distance(x, y, target.x, target.y) <= enemyAttackRadius) {
			state = ENEMYSTATE.ATTACK;
			sprite_index = sprAttack;
			image_index = 0;
			image_speed = 1.0;
			
			// Target attackRange px past the player
			xTo += lengthdir_x(attackRange, dir);
			yTo += lengthdir_y(attackRange, dir);
		}
	}
	
// Check if close enough to launch an attack
if (instance_exists(target)) {
		
}
}
	
function SlimeAttack() {
	// How fast to move
	var spd = enemySpeed;
	
	// Mid-air frame
	var midair = 3;
	// Landing frame
	var landing = 5;
	
	// Dont move while still getting ready to move
	if (image_index == 0) {
		spd = 0;
	}
	
	// Freeze anim while in mid air and also after landing finishes
	if (floor(image_index) == midair || floor(image_index) == landing) {
		image_speed = 0;
	}
	
	var distanceToGo = point_distance(x,y,xTo,yTo);
	
	// Begin landing end of the animation once we're nearly done
	if (distanceToGo < 4 && image_index < 5) {
		image_speed = 1.0;
	}
	
	if (distanceToGo > spd) {
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(spd, dir);
		vSpeed = lengthdir_y(spd, dir);
		if (hSpeed != 0) {
			image_xscale = sign(hSpeed);
		}
		
		if (EnemyTileCollision() == true) {
			xTo = x;
			yTo = y;
		}
	} else {
		x = xTo;
		y = yTo;
		if (floor(image_index) == landing) {
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
}

function SlimeHurt() {
	sprite_index = sprHurt;
	var distanceToGo = point_distance(x, y, xTo, yTo);
		
	if (distanceToGo > enemySpeed) {
		image_speed = 1.0;
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
			
		if (hSpeed != 0) {
			image_xscale = -sign(hSpeed)
		}
			
		// Collide & move
		if (EnemyTileCollision()) {
			xTo = x;
			yTo = y;
		}
	} else {
		x = xTo;
		y = yTo;
		if (statePrevious != ENEMYSTATE.ATTACK) {
			state = statePrevious;
		} else {
			state = ENEMYSTATE.CHASE;
		}
	}
}
	
function SlimeDie() {
	sprite_index = sprDie;
	image_speed = 1.0;
	var distanceToGo = point_distance(x, y, xTo, yTo);
	if (distanceToGo > enemySpeed) {
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		
		if (hSpeed != 0) {
			image_xscale = -sign(hSpeed);
		}
		
		// Collide & move
		EnemyTileCollision();
	} else {
		x = xTo;
		y = yTo;
	}
	
	if (image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number) {
		instance_destroy();
	}
}