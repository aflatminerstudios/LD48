/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
function scrCheckAKey(){
  return keyboard_check_pressed(ord("A"));
}

function scrCheckFKey() {
  return keyboard_check_pressed(ord("F"));
}

function scrCheckKeyFalse() {
  return false; 
}

