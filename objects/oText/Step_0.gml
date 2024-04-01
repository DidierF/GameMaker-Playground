lerpProgress += (1-lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

// Cycle through responses
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responseSelected += (keyDown - keyUp);
var maxRes = array_length(responses) -1;
var minRes = 0;
if (responseSelected > maxRes) {
	responseSelected = minRes;
} else if (responseSelected < minRes) {
	responseSelected = maxRes;
}

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
	var messageLength = string_length(textMessage);
	if (textProgress >= messageLength) {
		
		if (array_length(responses) > 0 && responses[0] != -1) {
			with (originInstance) {
				DialogResponses(other.responseScripts[other.responseSelected]);
			}
		}
		
		instance_destroy();
		if (instance_exists(oTextQueued)) {
			with (oTextQueued) {
				ticket -= 1;
			}
		} else {
			with (oPlayer) {
				state = lastState;
			}
		}
	} else {
		if (textProgress > 2) {
			textProgress = messageLength;
		}
	}
}
