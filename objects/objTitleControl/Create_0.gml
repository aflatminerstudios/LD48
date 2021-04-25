/// @description Insert description here
// if (live_call()) return live_result;
// if (live_call(argument0, argument1)) return live_result; // For 2 arg scripts
if (live_call()) return live_result;

debug_log("Starting " + room_get_name(room));
shaderControl = instance_create_layer(0, 0, "Instances", objShaderControl);

with (shaderControl) {
  fadingOut = false;
  brightnessAmt = 0.0;
  fadeTarget = 1.0;
  fadeAmount = 0.0;
  fadeDir = -1;
  fadeSpeed = fadeSpeedBase ;
  nextLevel = false;
  alarm[0] = -1;
}

