/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

textScript[0] = "\"You're going to wake up in 5...4...3...\""
textScript[1] = "[#e53340]Ok, fine. If you won't stay..."
textScript[2] = "[#e53340][wave]...we'll just come back [slant]with[/slant]  you.";


initialDelay = room_speed;
lineTime = room_speed * 3;
activeLine = -1;

alarm[0] = initialDelay;