state = PlayerStateFree;
lastState = state;
stateAttack = PlayerAttackFunctions;
hitByAttack = -1;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 1.5;
invulnerable = 0;
flash = 0;
uFlash = 0;
flashShader = shWhiteFlash;
z = 0;

animationEndScript = -1;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

// Input
keyLeft = false;
keyRight = false;
keyDown = false;
keyUp = false;
keyActivate = false;
keyAttack = false;
keyItem = false;

inputDirection = point_direction(0, 0, 0, 0);
inputMagnitude = false;

if (global.targetX != -1) {
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}
