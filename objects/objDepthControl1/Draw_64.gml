/// @description Insert description here
// You can write your code in this editor


if (hypLevel >= 9) {
  draw_sprite(sprTunnelVision2, 0, 400, 300); 
} else if (hypLevel >= 12) {
  draw_sprite(sprTunnelVision1, 0, 400, 300);
}

with (shaderControl) {
  fadingOut = true;
  brightnessAmt = -1.0;
  fadeTarget = 0.0;
  fadeAmount = 1.0;
  fadeDir = -1;
  fadeSpeed = fadeSpeedBase * 3;
  alarm[0] = 1;
}