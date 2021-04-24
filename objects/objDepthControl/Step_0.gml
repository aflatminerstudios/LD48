/// @description Insert description here
// You can write your code in this editor

if (hypLevel > hypGoal) {
  scrGoToNextDepth(curDepth);  
}

if (hypLevel < 0) {
  hypLevel = 0; 
}