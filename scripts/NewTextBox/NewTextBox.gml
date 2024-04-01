function NewTextBox(newText, backgroundIndex = 1, newResponses = []) {
	show_debug_message("New Text: "+ newText)
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
		
		if (array_length(newResponses) > 0) {
			// trim markers from responses
			for (var i = 0; i < array_length(newResponses); i++) {
				var markerPosition = string_pos(":", newResponses[i]);
				responseScripts[i] = real(string_copy(newResponses[i], 1, markerPosition-1));
				responses[i] = string_delete(newResponses[i], 1, markerPosition);
			}
		} else {
			responses = [-1];
			responseScripts = [-1];
		}
	}
	
	with (oPlayer) {
		if (state != PlayerStateLocked) {
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}