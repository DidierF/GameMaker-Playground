// @desc Initialize & Globals
randomize();

global.gamePaused = false;
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;

global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

var disW = display_get_width();
var disH = display_get_height();

global.ar = disW/disH;

global.resWidth = 640;
global.resHeight = global.resWidth / global.ar;


global.camWidth = 320;
global.camHeight = global.camWidth / global.ar;


window_set_size(global.resWidth, global.resHeight);
surface_resize(application_surface, global.resWidth, global.resHeight);


room_goto(ROOM_START);
