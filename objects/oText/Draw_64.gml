NineSliceBoxStretched(sTextBoxBg, x1, y1, x2, y2, background);

draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var print = string_copy(textMessage, 1, textProgress);

if (responses[0] != -1 && (textProgress >= string_length(textMessage))) {
	var resCount = array_length(responses);
	for (var i = 0; i < resCount; i++) {
		print += "\n";
		if (i == responseSelected) {
			print += "> " + responses[i] + " <";
		} else {
			print += responses[i];
		}
	}
}

draw_text((x1+x2) /2, y1+8, print);
draw_set_color(c_white);
draw_text((x1+x2) /2, y1+7, print);
