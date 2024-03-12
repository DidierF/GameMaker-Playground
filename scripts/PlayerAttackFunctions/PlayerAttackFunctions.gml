function AttackSlash() {
	
	// Attack just started
	if (sprite_index != sPlayerAttackSlash) {
		// Set up correct animation
		sprite_index = sPlayerAttackSlash;
		localFrame = 0;
		image_index = 0;
		
		if (!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}
		ds_list_clear(hitByAttack);
		
		
	}
	
	CalcAttack(sPlayerAttackSpriteHB);
	
	// Update Sprite
	PlayerAnimateSprite();
	if (animationEnd) {
		state = PlayerStateFree;
		animationEnd = false;
	}
	
}

function AttackSpin() {}

function CalcAttack(hitBox) {
	mask_index = hitBox;
	
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with(hitID) {
					if (object_is_ancestor(object_index, pEnemy)) {
						var damage = 5;
						var knockback = 10;
						HurtEnemy(id, damage, other.id, knockback);
					}
					if (entityHitScript != -1) {
						script_execute(entityHitScript);
					}
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	
	mask_index = sPlayer;
}

function HurtEnemy (enemy, damage, source, knockback) {
	with (enemy) {
		if (state != ENEMYSTATE.DIE) {
			enemyHP -= damage;
			flash = 1;
			
			// Hurt or dead?
			if (enemyHP <= 0) {
				state = ENEMYSTATE.DIE;
			} else {
				if (state != ENEMYSTATE.HURT) {
					statePrevious = state;
				}
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if (knockback != 0) {
				var knockDirection = point_direction(x, y, source.x, source.y);
				xTo = x - lengthdir_x(knockback, knockDirection);
				yTo = y - lengthdir_y(knockback, knockDirection);
			}
		}
	}
}