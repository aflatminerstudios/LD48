/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

scrInitialize();

debug_log("Starting " + room_get_name(room));


if(global.dev_mode)
	instance_create_depth(0, 0, -5000, objDebugControl);


//room_goto(roomLogo)
room_goto(roomTitle)
