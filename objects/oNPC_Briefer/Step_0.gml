/// @description Conversation

// Trigger conversation
if(distance_to_object(Player) < 25 && InputManager.interactInput && !instance_exists(curDialog))
{
	var str = "Welcome to the first demo!\nGet ready for an epic battle!";
	str += "\nEnter the yellow portal below!!";
	curDialog = scr_Text(str, 0.5, x - GlobalConstants.unit, y - GlobalConstants.unit * 2);
	oDoor.appearing = true;
}

if(distance_to_object(Player) < 25 && InputManager.isInteracting && !instance_exists(curInteraction))
{
	curInteraction = instance_create_layer(x + GlobalConstants.unit + 8, y, "Instances", oInteract);
}
else if (!InputManager.isInteracting)
{
	instance_destroy(curInteraction);
}