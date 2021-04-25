/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hypLevel = 0;
hypGoal = 6;

curDepth = 0;

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