/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

bar = instance_create_depth(x, y + 25, depth - 1, objMetronomeBar);
weight = instance_create_depth(x, y - 60, depth - 2, objMetronomeWeight);
front = instance_create_depth(x, y, depth - 3, objMetronomeFront);

bar.image_xscale = self.image_xscale;
bar.image_yscale = self.image_yscale;
weight.image_xscale = self.image_xscale;
weight.image_yscale = self.image_yscale;
front.image_xscale = self.image_xscale;
front.image_yscale = self.image_yscale;

//tick time in seconds
ticktockSpeed = 1;
minTicktockSpeed = 0.1;
maxTicktockSpeed = 2;

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


//for setting/moving weight
barLength = 375;
curWeightPos = 0.9;
weightMoveSpeed = 0.02;
catchupSpeed = 0.7;

//Has this hit a beat since adjusting
hitBeat = true;
waiting = false;