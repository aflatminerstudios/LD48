/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts


// Simple countdown for now, replace with sound-based logic later -- Micha TODO
logoDisplayTime--;

if (logoDisplayTime <= 0)
	shouldGoToTitle = true;


if (shouldGoToTitle)
	room_goto(roomTitle2)