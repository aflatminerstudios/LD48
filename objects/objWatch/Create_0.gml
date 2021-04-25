/// @description Setup instance variables
// You can write your code in this editor

//ticktock speed in seconds
ticktockSpeed = 1;

//number of steps in current tick-tock pattern
curSteps = 0;
curDirection = 1;

//Set initial angles
tockAngle = 75;
tickAngle = -75;
image_angle = tockAngle;

//Which script to use to ease motion
easeScript = scrEaseInOutCubic;

//When active, can push button
active = false;
//Active buffer is timeframe where it will be active
activeBuffer = room_speed / 3

//Did user push button

hitObj = noone;