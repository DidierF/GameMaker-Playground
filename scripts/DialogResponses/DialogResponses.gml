function DialogResponses(response) {
	switch (response) {
		case 0:
			break;
		case 1:
			NewTextBox("You gave response A!", 1);
			break;
		case 2:
			NewTextBox("You gave response B! Any further response?", 1, ["3: Yes!", "0:No."]);
			break;
		case 3:
			NewTextBox("Thanks for your responses!", 0);
			break;
		case 4: {
			NewTextBox("Thanks", 2);
			NewTextBox("I think I left it in the cave to the north.", 2);
			global.questStatus[? "theHatQuest"] = 1;
			break;
		}
		case 5:
			NewTextBox(":(", 2);
			break;
		default:
			break;
	}
}