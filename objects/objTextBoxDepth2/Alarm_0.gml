/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

debug_log("objDepth0TextBox.Alarm_0 - activeLine: " + string(activeLine));
if(activeLine < array_length(textScript) - 1) {
	activeLine++;
	alarm[0] = lineTime;
}