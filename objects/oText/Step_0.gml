lerpProgress += (1-lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if (mouse_check_button_pressed(mb_left)) {
	var messageLength = string_length(textMessage);
	if (textProgress >= messageLength) {
		instance_destroy();
	} else {
		if (textProgress > 2) {
			textProgress = messageLength;
		}
	}
}
