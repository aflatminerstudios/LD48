/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hypLevel = 0;
hypGoal = 15;

curDepth = 1;


with (shaderControl) {
  fadingOut = true;
  brightnessAmt = -1.0;
  fadeTarget = 0.0;
  fadeAmount = 1.0;
  fadeDir = -1;
  fadeSpeed = fadeSpeedBase * 3;
  nextLevel = false;
  alarm[0] = 1;
}