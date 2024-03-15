/// @desc Layer Management
layer_set_visible("Col", false);

// Starts setting up camera

var camWidth = global.camWidth;
var camHeight = global.camHeight;
var cam = camera_create_view(0, 0, camWidth, camHeight);

camera_set_view_target(cam, oPlayer);
camera_set_view_border(cam, camWidth / 2, camHeight / 2);

view_camera[0] = cam;