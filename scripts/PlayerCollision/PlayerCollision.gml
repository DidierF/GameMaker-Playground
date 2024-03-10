function PlayerCollision(){
	var collision = false;
	var entityList = ds_list_create();
	
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		x -= x mod TILE_SIZE;
		if (sign(hSpeed) == 1) {
			x += TILE_SIZE - 1;
		}
		hSpeed = 0;
		collision = true;
	}
	
	// Horizontal Entities
	var entityCount = instance_position_list(x + hSpeed, y, pEntity, entityList, false);
	var snapX;
	
	while (entityCount > 0) {
		var entityCheck = entityList[| 0];
		if (entityCheck.entityCollision == true) {
			// Move as close as we can
			if (sign(hSpeed) == -1) {
				snapX = entityCheck.bbox_right + 1;
			} else {
				snapX = entityCheck.bbox_left - 1;
			}
			x = snapX;
			hSpeed = 0;
			collision = true;
			entityCount = 0;
		}
		ds_list_delete(entityList, 0);
		entityCount -= 1;
	}
	
	// Horizontal Move Commit
	x += hSpeed;
	
	ds_list_clear(entityList);
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
		y -= y mod TILE_SIZE;
		if (sign(vSpeed) == 1) {
			y += TILE_SIZE - 1;
		}
		vSpeed = 0;
		collision = true;
	}
	
	// Vertical Entities
	entityCount = instance_position_list(x, y + vSpeed, pEntity, entityList, false);
	var snapY;
	
	while (entityCount > 0) {
		var entityCheck = entityList[| 0];
		if (entityCheck.entityCollision == true) {
			// Move as close as we can
			if (sign(vSpeed) == -1) {
				snapY = entityCheck.bbox_bottom + 1;
			} else {
				snapY = entityCheck.bbox_top - 1;
			}
			y = snapY;
			vSpeed = 0;
			collision = true;
			entityCount = 0;
		}
		ds_list_delete(entityList, 0);
		entityCount -= 1;
	}
	
	// Vertical Move Commit
	y += vSpeed;
	
	ds_list_destroy(entityList);
	
	return collision;
}