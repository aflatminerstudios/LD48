/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"I'm going to ask you to focus on the pocket watch.\""
textScript[1] = "\"The rhythm almost makes you sleepy, doesn't it?\""
textScript[2] = "[#dfdfdf][slant]You can make out a letter on the watch face."
textScript[3] = "\"Good. Let's go deeper...\"";

initialDelay = room_speed;
lineTime = room_speed * 3;
activeLine = -1;

alarm[0] = initialDelay;