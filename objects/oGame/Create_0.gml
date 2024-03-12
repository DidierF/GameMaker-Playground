// @desc Initialize & Globals
randomize();

global.gamePaused = false;
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;

global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

room_goto(ROOM_START);
