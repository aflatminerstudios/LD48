/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;


if(activeLine >= 0) {
	draw_self();
	var scriptLine = textScript[activeLine];
	scribble("[fntMermaid20][c_white][fa_center][fa_middle]" + scriptLine).draw(x, y);
}
