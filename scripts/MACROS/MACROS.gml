#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARDINAL_DIR round(direction / 90)
#macro ROOM_START rVillage

#macro TRANSITION_SPEED 0.02
#macro OUT 0
#macro IN 1

enum ENEMYSTATE {
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}