var maxDevices = 4;

for (var i = 0; i < maxDevices; i++) {
  var touchX = device_mouse_x_to_gui(i);
  var touchY = device_mouse_y_to_gui(i);
        
  var uiAtPos = instance_position(touchX, touchY, pUI);
  var held = device_mouse_check_button(i, mb_left);
        
  if (uiAtPos != noone && held) {
    uiAtPos.input(i, touchX, touchY);
  }
}