/// @description Initialize variables, spawn chidlren
// You can write your code in this editor

if (live_call()) return live_result;

bar = instance_create_depth(x, y + 118, depth - 1, objMetronomeBar);
weight = instance_create_depth(x, y - 60, depth - 2, objMetronomeWeight);

//tick time in seconds
ticktockSpeed = 1;

//number of steps in current tick-tock pattern
curSteps = 0;
curDirection = 1;

//Which script to use to ease motion
easeScript = scrEaseInOutCubic;

//Set initial angles for bar
tockAngle = 35;
tickAngle = -35;
curAngle = 35;
bar.image_angle = curAngle;

//When active, can push button
active = false;
//Active buffer is timeframe where it will be active
activeBuffer = room_speed / 3

