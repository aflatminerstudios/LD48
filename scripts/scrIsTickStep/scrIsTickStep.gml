/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrIsTickStep(){
  return (objTickControl.alarm[0] == 0 || objTickControl.alarm[1] == 0);
}