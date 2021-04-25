/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


if(global.dev_mode) {
			
	// Restart the room is shift+escape
	// Escape goes back to the title
	// Shift+escape reloads the current room
	if (keyboard_check_pressed(vk_escape) && keyboard_check(vk_shift))
		room_restart();
	
	else if (keyboard_check_pressed(vk_escape))
		room_goto(roomTitle)
			
	else if (keyboard_check_pressed(ord("-")))
		room_goto(roomLogo);
		
	else if (keyboard_check_pressed(ord("1")))
		room_goto(roomDepth1);
		
	else if (keyboard_check_pressed(ord("2")))
		room_goto(roomDepth2);

	else if (keyboard_check_pressed(ord("3")))
		room_goto(roomDepth3);
		
	else if (keyboard_check_pressed(ord("4")))
		room_goto(roomDepth4);
		
	else if (keyboard_check_pressed(ord("5")))
		room_goto(roomDepth5);

	else if (keyboard_check_pressed(ord("0")))
		room_goto(roomDepthFinal);

	
}