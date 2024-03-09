// Get Player Input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyActivate = keyboard_check_pressed(vk_space) || keyboard_check(ord("K"));
keyAttack = keyboard_check_pressed(vk_shift) || keyboard_check(ord("J"));
keyItem = keyboard_check_pressed(vk_control) || keyboard_check(ord("N"));

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) {
	script_execute(state);
}

depth = -bbox_bottom