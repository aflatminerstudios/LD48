/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"You might start seeing things now.  Do you see things?\""
textScript[1] = "[#dfdfdf][slant]Don't tell them about The Things.  It'll be our secret."
textScript[2] = "[#dfdfdf][slant]The Things tell you to move the weight down.\nWhich seems very normal to you. Now."
textScript[3] = "\"Good. Let's go deeper...\"";


initialDelay = room_speed;
lineTime = room_speed * 4;
activeLine = -1;

alarm[0] = initialDelay;