state = PlayerStateFree;
stateAttack = PlayerAttackFunctions;
hitByAttack = -1;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;
invulnerable = 0;
flash = 0;
uFlash = 0;
flashShader = shWhiteFlash;
z = 0;

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
