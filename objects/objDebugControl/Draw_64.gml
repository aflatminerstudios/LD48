/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

draw_self();
var roomName = room_get_name(room)

scribble("[c_white][fa_left][fa_top][fntMermaid20] "+ roomName).draw(10, 100);