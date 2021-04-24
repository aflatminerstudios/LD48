/// @description Swap angle, etc.
// You can write your code in this editor

var totalSteps = ticktockSpeed * room_speed;

//var curPct = curSteps / totalSteps;

var curAngle = script_execute(easeScript, curSteps, tockAngle, tickAngle - tockAngle, totalSteps);
image_angle = curAngle;


if (curSteps >= totalSteps) {
  curDirection = -1; 
}
if (curSteps <= 0) {
  curDirection = 1; 
}

curSteps += curDirection;

if (curSteps <= activeBuffer || (totalSteps - curSteps <= activeBuffer)) {
  active = true;
} else {
  active = false;
}