function NewTextBox(newText, backgroundIndex = 1) {
	var obj;
	if (instance_exists(oText)) {
		obj = oTextQueued;
	} else {
		obj = oText;
	}
	
	with (instance_create_layer(0, 0, "Instances", obj)) {
		textMessage = newText;
		if (instance_exists(other)) {
			originInstance = other.id;
		} else {
			originInstance = noone;
		}
		background = backgroundIndex;
	}
	
	with (oPlayer) {
		if (state != PlayerStateLocked) {
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}