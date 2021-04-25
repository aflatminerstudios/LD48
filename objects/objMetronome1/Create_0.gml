/// @description Initialize variables, spawn chidlren
// You can write your code in this editor

if (live_call()) return live_result;

bar = instance_create_depth(x, y + 25, depth - 1, objMetronomeBar);
weight = instance_create_depth(x, y - 60, depth - 2, objMetronomeWeight);
gear1 = instance_create_depth(x - 35, y + 30, depth - 3, objMetronomeGear);
gear2 = instance_create_depth(x + 35, y + 30, depth - 3, objMetronomeGear);
front = instance_create_depth(x, y, depth - 4, objMetronomeFront);

bar.image_xscale = self.image_xscale;
bar.image_yscale = self.image_yscale;
weight.image_xscale = self.image_xscale;
weight.image_yscale = self.image_yscale;
gear1.image_xscale = self.image_xscale;
gear1.image_yscale = self.image_yscale;
gear2.image_xscale = self.image_xscale;
gear2.image_yscale = self.image_yscale;
front.image_xscale = self.image_xscale;
front.image_yscale = self.image_yscale;

gear1.image_angle = 270;
gear2.image_angle = 90;


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

