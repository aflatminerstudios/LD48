/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"You're getting very sleepy now.\""
textScript[1] = "[#dfdfdf][slant]You really want to match that dang clock.\nIt's compulsive."
textScript[2] = "\"Good. Let's go deeper.\"";


initialDelay = room_speed;
lineTime = room_speed * 3;
activeLine = -1;

alarm[0] = initialDelay;