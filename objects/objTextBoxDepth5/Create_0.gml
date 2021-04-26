/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\[#dfdfdf][slant]This must be your subconscious?\nWait...can you get back out?"
textScript[1] = "[#e53340]Why would you leave? We have [wave]cheese."
textScript[2] = "[#e53340]We will give you, like... [wave]two[/wave] cheese if you stay."
textScript[3] = "[#e53340]Ok, like one cheese. We ate the other cheese."

initialDelay = room_speed;
lineTime = room_speed * 3;
activeLine = -1;

alarm[0] = initialDelay;