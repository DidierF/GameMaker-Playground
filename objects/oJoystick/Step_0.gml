if (touchId != -1) {
  if (device_mouse_check_button(touchId, mb_left)) {
    joyX = device_mouse_x_to_gui(touchId) - x;
    joyY = device_mouse_y_to_gui(touchId) - y;
		
    var dir = point_direction(0, 0, joyX, joyY);
    var distance = point_distance(0, 0, joyX, joyY);
        
    if (distance > radius) {
      joyX = lengthdir_x(radius, dir);
      joyY = lengthdir_y(radius, dir);
    }
  } else {
    touchId = -1;
    joyX = 0;
    joyY = 0;
  }
}