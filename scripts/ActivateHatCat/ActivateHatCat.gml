// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateHatCat() {
	var hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHat);
	switch (global.questStatus[? "theHatQuest"]) {
		case 0: { //Not Started
			if (hasHat) {
				// Complete quest
				NewTextBox("Wow you find my hat without me even asking you to!", 2);
				global.questStatus[? "theHatQuest"] = 2;
				with(oNPC) {
					sprite_index = sQuestyHat;
				}
				with (oHat) {
					instance_destroy();
				}
				global.iLifted = noone;
				with (oPlayer) {
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			} else {
				// Offer quest
				NewTextBox("Hello there! You look like a brave adventurer!\nWhat with the cape and all.", 2);
				NewTextBox("Could you help me find my missing hat?", 2, ["4:Of course!", "5:This task is beneath me."]);
			}
			break;
		}
		case 1: { //Quest Started
			if (hasHat) {
				// Complete quest
				NewTextBox("Wow you find my hat!", 2);
				global.questStatus[? "theHatQuest"] = 2;
				with(oNPC) {
					sprite_index = sQuestyHat;
				}
				with (oHat) {
					instance_destroy();
				}
				global.iLifted = noone;
				with (oPlayer) {
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			} else {
				// Clue Reminder
				NewTextBox("I think I left my hat in that scary cave to the north east.", 2);
				NewTextBox("You might need some items to get there!", 2);
			}
			break;
		}
		case 2: {// Quest completed
			NewTextBox("Thanks again!", 2);
			break;
		}
		default: 
			break;
	}
}