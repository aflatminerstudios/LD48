/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"You should be totally asleep right now. What do you see?\""
textScript[1] = "[#dfdfdf][slant]You feel like you shouldn't tell her about the eyes.\n[#e53340]DON'T TELL HER ABOUT THE EYES."
textScript[2] = "\"[wave]nOTHiNG....\"";


initialDelay = room_speed;
lineTime = room_speed * 3;
activeLine = -1;

alarm[0] = initialDelay;