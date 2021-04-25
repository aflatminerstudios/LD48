/// @description Insert description here
// You can write your code in this editor

if (hypLevel >= hypGoal) {
  scrFadeOut(shaderControl, 1.0, true);
}

if (hypLevel < 0) {
  hypLevel = 0; 
}

if (hypLevel >= hypGoal / 2) {
  scrFadeOut(shaderControl, (hypLevel / hypGoal - 0.5) * 2, false, 0.5)
} else {
  scrFadeOut(shaderControl, 0.0, false, 1.0); 
}