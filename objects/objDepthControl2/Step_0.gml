/// @description Insert description here
// You can write your code in this editor

if (hypLevel >= hypGoal) {
  scrFadeOut(shaderControl, 1.0, true, 1.0);
}

if (hypLevel < 0) {
  hypLevel = 0; 
}

if (hypLevel >= 2) {
  scrFadeOut(shaderControl, hypLevel / hypGoal, false, 0.5)
} else {
  scrFadeOut(shaderControl, 0.0, false, 1.0); 
}