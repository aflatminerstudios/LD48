/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"Imagine you're a lab rat in a maze.\nHow does that make you feel?\""
textScript[1] = "[#dfdfdf][slant]Like you could really go for a grilled cheese."
textScript[2] = "\"Good. Let's go deeper...\"";


initialDelay = room_speed;
lineTime = room_speed * 4;
activeLine = -1;

alarm[0] = initialDelay;