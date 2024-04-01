// @desc Initialize & Globals
randomize();

global.gamePaused = false;
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;

global.textSpeed = .75;

global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

global.ar = 16/9;

global.resWidth = 640;
global.resHeight = global.resWidth / global.ar;


global.camWidth = 320;
global.camHeight = global.camWidth / global.ar;


window_set_size(global.resWidth, global.resHeight);
surface_resize(application_surface, global.resWidth, global.resHeight);


room_goto(ROOM_START);
