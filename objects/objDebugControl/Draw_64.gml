/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

draw_self();
var roomName = room_get_name(room)

var centerY = (bbox_top+bbox_bottom)/2;
scribble("[c_black][fa_left][fa_middle][fntMermaid20] "+ roomName).draw(bbox_right+5, centerY+1);
scribble("[c_white][fa_left][fa_middle][fntMermaid20] "+ roomName).draw(bbox_right+5-1, centerY-1);